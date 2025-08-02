import 'package:flutter/material.dart';

/// Theme configuration for EmojiSlider styling
class EmojiSliderTheme {
  final double emojiSize;
  final Duration animationDuration;
  final double selectedScale;
  final double unselectedOpacity;
  final Color? activeColor;
  final Color? thumbColor;
  final EdgeInsets padding;

  const EmojiSliderTheme({
    this.emojiSize = 38.0,
    this.animationDuration = const Duration(milliseconds: 240),
    this.selectedScale = 1.3,
    this.unselectedOpacity = 0.4,
    this.activeColor,
    this.thumbColor,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
  });

  /// Creates a copy of this theme with the given fields replaced
  EmojiSliderTheme copyWith({
    double? emojiSize,
    Duration? animationDuration,
    double? selectedScale,
    double? unselectedOpacity,
    Color? activeColor,
    Color? thumbColor,
    EdgeInsets? padding,
  }) {
    return EmojiSliderTheme(
      emojiSize: emojiSize ?? this.emojiSize,
      animationDuration: animationDuration ?? this.animationDuration,
      selectedScale: selectedScale ?? this.selectedScale,
      unselectedOpacity: unselectedOpacity ?? this.unselectedOpacity,
      activeColor: activeColor ?? this.activeColor,
      thumbColor: thumbColor ?? this.thumbColor,
      padding: padding ?? this.padding,
    );
  }
}

/// Default themes for common use cases
class EmojiSliderThemes {
  static const EmojiSliderTheme standard = EmojiSliderTheme();

  static const EmojiSliderTheme large = EmojiSliderTheme(
    emojiSize: 60.0,
    selectedScale: 1.2,
  );

  static const EmojiSliderTheme small = EmojiSliderTheme(
    emojiSize: 24.0,
    selectedScale: 1.4,
  );

  static const EmojiSliderTheme subtle = EmojiSliderTheme(
    selectedScale: 1.1,
    unselectedOpacity: 0.7,
    animationDuration: Duration(milliseconds: 150),
  );
}
