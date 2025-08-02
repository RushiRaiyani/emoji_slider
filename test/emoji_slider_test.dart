import 'package:emoji_slider/emoji_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:animated_emoji/animated_emoji.dart';

void main() {
  testWidgets('EmojiSlider shows emojis and reacts to tap', (WidgetTester tester) async {
    int? selectedEmoji;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EmojiSlider(
            emojiTypes: [
              EmojiType.smile,
              EmojiType.sad,
              EmojiType.angry,
            ],
            onEmojiSelected: (index) {
              selectedEmoji = index;
            },
            showSlider: false, // Only test tap here
          ),
        ),
      ),
    );

    // Ensure the emojis are on screen
    expect(find.byType(AnimatedEmoji), findsNWidgets(3));

    // Tap the second emoji (index 1)
    await tester.tap(find.byType(AnimatedEmoji).at(1));
    await tester.pump(); // Rebuild the widget after the tap

    // Test that callback was triggered
    expect(selectedEmoji, equals(1));
  });
}
