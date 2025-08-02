
# 🎚️ emoji_slider

A customizable Flutter slider widget that displays animated emojis as visual indicators — powered by the [`animated_emoji`](https://pub.dev/packages/animated_emoji) package.

---

## ✨ Features

- Interactive emoji-based slider  
- Animated emoji feedback  
- Custom thumb and track colors  
- Built-in `EmojiType` enum for easy configuration  
- 100+ animated emojis available  
- Tap-to-select functionality  
- Customizable themes and styling  
- Responsive design  

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  emoji_slider: ^1.0.0
  animated_emoji: ^3.1.0  # Required dependency
```

Then run:

```sh
flutter pub get
```

---

## 📥 Import

```dart
import 'package:emoji_slider/emoji_slider.dart';
```

---

## 🎯 Basic Usage

```dart
EmojiSlider(
  emojiTypes: [
    EmojiType.sad,
    EmojiType.neutralFace,
    EmojiType.smile,
    EmojiType.joy,
  ],
  min: 0,
  max: 100,
  initialValue: 50,
  onEmojiSelected: (index) {
    print('Selected emoji index: $index');
  },
)
```

---

## 🎨 Examples

### Custom Styling

```dart
EmojiSlider(
  emojiTypes: [EmojiType.fire, EmojiType.rocket, EmojiType.sparkles],
  emojiSize: 60.0,
  selectedScale: 1.4,
  activeColor: Colors.orange,
  thumbColor: Colors.deepOrange,
  onEmojiSelected: (index) => print('Selected: $index'),
)
```

### Tap-Only Mode (No Slider)

```dart
EmojiSlider(
  emojiTypes: [
    EmojiType.thumbsUp,
    EmojiType.clap,
    EmojiType.trophy,
  ],
  showSlider: false,
  enableTapToSelect: true,
  emojiSize: 50.0,
  onEmojiSelected: (index) => print('Tapped: $index'),
)
```

### Mood Rating Scale

```dart
EmojiSlider(
  emojiTypes: [
    EmojiType.cry,
    EmojiType.worried,
    EmojiType.neutralFace,
    EmojiType.smile,
    EmojiType.heartEyes,
  ],
  min: 1,
  max: 5,
  divisions: 4,
  initialValue: 3,
  emojiSize: 45.0,
  onEmojiSelected: (index) {
    print('Mood level: ${index + 1}/5');
  },
)
```

### Activity Level Slider

```dart
EmojiSlider(
  emojiTypes: [
    EmojiType.sleep,
    EmojiType.plant,
    EmojiType.fire,
    EmojiType.rocket,
    EmojiType.explosion,
  ],
  min: 0,
  max: 10,
  divisions: 10,
  initialValue: 5,
  emojiSize: 50.0,
  activeColor: Colors.orange,
  thumbColor: Colors.deepOrange,
  onEmojiSelected: (index) {
    print('Activity level: $index');
  },
)
```

### Love Intensity (Hearts Only)

```dart
EmojiSlider(
  emojiTypes: [
    EmojiType.blueHeart,
    EmojiType.greenHeart,
    EmojiType.yellowHeart,
    EmojiType.redHeart,
    EmojiType.sparklingHeart,
  ],
  showSlider: false,
  enableTapToSelect: true,
  emojiSize: 40.0,
  selectedScale: 1.5,
  onEmojiSelected: (index) {
    print('Love intensity: $index');
  },
)
```

---

## 🔧 Properties

| Property             | Type                     | Default     | Description                          |
|----------------------|--------------------------|-------------|--------------------------------------|
| `emojiTypes`         | `List<EmojiType>`        | required    | List of emojis to display            |
| `min`                | `double`                 | `0`         | Minimum slider value                 |
| `max`                | `double`                 | `100`       | Maximum slider value                 |
| `divisions`          | `int`                    | `100`       | Number of discrete divisions         |
| `initialValue`       | `double`                 | `0`         | Initial slider position              |
| `emojiSize`          | `double`                 | `38.0`      | Size of emoji icons                  |
| `selectedScale`      | `double`                 | `1.3`       | Scale factor for selected emoji      |
| `unselectedOpacity`  | `double`                 | `0.4`       | Opacity of unselected emojis         |
| `animationDuration`  | `Duration`               | `240ms`     | Animation duration                   |
| `showSlider`         | `bool`                   | `true`      | Whether to show the slider           |
| `enableTapToSelect`  | `bool`                   | `true`      | Enable tap-to-select functionality   |
| `activeColor`        | `Color?`                 | `null`      | Color of active slider track         |
| `thumbColor`         | `Color?`                 | `null`      | Color of slider thumb                |
| `onEmojiSelected`    | `ValueChanged<int>?`     | `null`      | Callback when emoji is selected      |
| `onValueChanged`     | `ValueChanged<double>?`  | `null`      | Callback when slider value changes   |
| `theme`              | `EmojiSliderTheme?`      | `null`      | Custom theme configuration           |

---

## 🎨 Theme Support

```dart
EmojiSlider(
  theme: EmojiSliderThemes.large, // Predefined theme

  // or custom theme
  theme: EmojiSliderTheme(
    emojiSize: 60.0,
    selectedScale: 1.2,
    activeColor: Colors.blue,
    animationDuration: Duration(milliseconds: 300),
  ),
)
```

### Predefined Themes

- `EmojiSliderThemes.standard` – Default theme  
- `EmojiSliderThemes.large` – Larger emojis (60px)  
- `EmojiSliderThemes.small` – Smaller emojis (24px)  
- `EmojiSliderThemes.subtle` – Subtle animations and scaling  

---

## 😊 Available Emojis

... [Truncated for brevity in notebook output] ...
