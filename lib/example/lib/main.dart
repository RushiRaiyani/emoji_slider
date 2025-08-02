import 'package:flutter/material.dart';
import 'package:animated_emoji/animated_emoji.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Slider Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const EmojiSliderDemo(),
    );
  }
}

class EmojiSliderDemo extends StatefulWidget {
  const EmojiSliderDemo({super.key});

  @override
  State<EmojiSliderDemo> createState() => _EmojiSliderDemoState();
}

class _EmojiSliderDemoState extends State<EmojiSliderDemo> {
  final List<AnimatedEmojiData> emojis = [
    AnimatedEmojis.cry,
    AnimatedEmojis.sad,
    AnimatedEmojis.smile,
    AnimatedEmojis.joy,
    AnimatedEmojis.fire,
  ];

  double _sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    int index = _sliderValue.round().clamp(0, emojis.length - 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emoji Slider Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedEmoji(
              emojis[index],
              size: 100,
              repeat: true,
            ),
            const SizedBox(height: 32),
            Slider(
              min: 0,
              max: (emojis.length - 1).toDouble(),
              divisions: emojis.length - 1,
              value: _sliderValue,
              label: index.toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Text(
              'Selected Emoji Index: $index',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
