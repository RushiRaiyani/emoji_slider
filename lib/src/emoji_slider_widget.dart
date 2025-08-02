import 'package:flutter/material.dart';
import 'package:animated_emoji/animated_emoji.dart';
import 'emoji_type.dart';
import 'emoji_mapping.dart';
import 'emoji_slider_theme.dart';

/// A customizable emoji slider widget that displays animated emojis
/// and allows users to select them via a slider or direct tap interaction.
///
/// Example usage:
/// ```
/// EmojiSlider(
///   emojiTypes: [EmojiType.smile, EmojiType.sad, EmojiType.angry],
///   min: 0,
///   max: 100,
///   initialValue: 50,
///   onEmojiSelected: (index) => print('Selected: $index'),
/// )
/// ```
class EmojiSlider extends StatefulWidget {
  /// List of emoji types to display
  final List<EmojiType> emojiTypes;

  /// Minimum slider value (default: 0)
  final double min;

  /// Maximum slider value (default: 100)
  final double max;

  /// Number of divisions in the slider (default: 100)
  final int divisions;

  /// Initial slider value (default: 0)
  final double initialValue;

  /// Callback when an emoji is selected
  final ValueChanged<int>? onEmojiSelected;

  /// Callback when slider value changes
  final ValueChanged<double>? onValueChanged;

  /// Whether to show the slider (default: true)
  final bool showSlider;

  /// Enable tap-to-select functionality (default: true)
  final bool enableTapToSelect;

  /// Theme configuration for styling
  final EmojiSliderTheme? theme;

  /// Legacy properties for backward compatibility
  final Color? activeColor;
  final Color? thumbColor;
  final double? emojiSize;
  final Duration? animationDuration;
  final double? selectedScale;
  final double? unselectedOpacity;

  const EmojiSlider({
    super.key,
    required this.emojiTypes,
    this.min = 0,
    this.max = 100,
    this.divisions = 100,
    this.initialValue = 0,
    this.onEmojiSelected,
    this.onValueChanged,
    this.showSlider = true,
    this.enableTapToSelect = true,
    this.theme,
    // Legacy properties
    this.activeColor,
    this.thumbColor,
    this.emojiSize,
    this.animationDuration,
    this.selectedScale,
    this.unselectedOpacity,
  }) :assert(min < max, 'min must be less than max'),
        assert(initialValue >= min && initialValue <= max,
        'initialValue must be between min and max');

  @override
  State<EmojiSlider> createState() => _EmojiSliderState();
}

class _EmojiSliderState extends State<EmojiSlider> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  /// Get the effective theme by merging provided theme with legacy properties
  EmojiSliderTheme get _effectiveTheme {
    final baseTheme = widget.theme ?? EmojiSliderThemes.standard;

    return baseTheme.copyWith(
      emojiSize: widget.emojiSize ?? baseTheme.emojiSize,
      animationDuration: widget.animationDuration ?? baseTheme.animationDuration,
      selectedScale: widget.selectedScale ?? baseTheme.selectedScale,
      unselectedOpacity: widget.unselectedOpacity ?? baseTheme.unselectedOpacity,
      activeColor: widget.activeColor ?? baseTheme.activeColor,
      thumbColor: widget.thumbColor ?? baseTheme.thumbColor,
    );
  }

  List<AnimatedEmojiData> get _emojis =>
      widget.emojiTypes.map((type) => emojiMapping[type]!).toList();

  double _emojiValue(int index) {
    if (_emojis.length == 1) return widget.min;
    return widget.min + (widget.max - widget.min) * (index / (_emojis.length - 1));
  }

  int _currentSelectedEmojiIndex() {
    if (_emojis.isEmpty) return 0;

    for (int i = _emojis.length - 1; i >= 0; i--) {
      if (_currentValue >= _emojiValue(i)) return i;
    }
    return 0;
  }

  void _selectEmoji(int index) {
    setState(() {
      _currentValue = _emojiValue(index);
    });
    widget.onEmojiSelected?.call(index);
    widget.onValueChanged?.call(_currentValue);
  }

  @override
  Widget build(BuildContext context) {
    final emojis = _emojis;
    final selectedIdx = _currentSelectedEmojiIndex();
    final theme = _effectiveTheme;

    return Padding(
      padding: theme.padding,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Emojis Row
              SizedBox(
                height: theme.emojiSize * theme.selectedScale,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(emojis.length, (i) {
                    final isSelected = i == selectedIdx;

                    Widget emojiWidget = AnimatedScale(
                      scale: isSelected ? theme.selectedScale : 1.0,
                      duration: theme.animationDuration,
                      curve: Curves.easeOut,
                      child: AnimatedOpacity(
                        opacity: isSelected ? 1.0 : theme.unselectedOpacity,
                        duration: theme.animationDuration,
                        child: AnimatedEmoji(
                          emojis[i],
                          size: theme.emojiSize,
                          repeat: isSelected,
                        ),
                      ),
                    );

                    if (widget.enableTapToSelect) {
                      return GestureDetector(
                        onTap: () => _selectEmoji(i),
                        child: emojiWidget,
                      );
                    }

                    return emojiWidget;
                  }),
                ),
              ),

              const SizedBox(height: 8),

              // Slider (conditional)
              if (widget.showSlider)
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: theme.activeColor ?? Theme.of(context).colorScheme.primary,
                    inactiveTrackColor: (theme.activeColor ?? Theme.of(context).colorScheme.primary).withOpacity(0.3),
                    thumbColor: theme.thumbColor ?? Theme.of(context).colorScheme.primary,
                    overlayColor: (theme.thumbColor ?? Theme.of(context).colorScheme.primary).withOpacity(0.2),
                  ),
                  child: Slider(
                    value: _currentValue,
                    min: widget.min,
                    max: widget.max,
                    divisions: widget.divisions,
                    onChanged: (v) {
                      setState(() => _currentValue = v);
                      widget.onEmojiSelected?.call(_currentSelectedEmojiIndex());
                      widget.onValueChanged?.call(v);
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
