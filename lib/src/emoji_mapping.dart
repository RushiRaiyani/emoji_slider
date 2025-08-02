import 'package:animated_emoji/animated_emoji.dart';
import 'emoji_type.dart';

/// Maps EmojiType enum values to their corresponding AnimatedEmojiData
final Map<EmojiType, AnimatedEmojiData> emojiMapping = {
  // Smileys and Emotions (Face Emojis)
  EmojiType.smile: AnimatedEmojis.smile,
  EmojiType.smileWithBigEyes: AnimatedEmojis.smileWithBigEyes,
  EmojiType.grin: AnimatedEmojis.grin,
  EmojiType.grinning: AnimatedEmojis.grinning,
  EmojiType.laughing: AnimatedEmojis.laughing,
  EmojiType.grinSweat: AnimatedEmojis.grinSweat,
  EmojiType.joy: AnimatedEmojis.joy,
  EmojiType.rofl: AnimatedEmojis.rofl,
  EmojiType.wink: AnimatedEmojis.wink,
  EmojiType.blush: AnimatedEmojis.blush,
  EmojiType.warmSmile: AnimatedEmojis.warmSmile,
  EmojiType.relieved: AnimatedEmojis.relieved,
  EmojiType.slightlyHappy: AnimatedEmojis.slightlyHappy,
  EmojiType.happyCry: AnimatedEmojis.happyCry,
  EmojiType.upsideDownFace: AnimatedEmojis.upsideDownFace,

  // Love/Heart expressions
  EmojiType.kissing: AnimatedEmojis.kissing,
  EmojiType.kissingSmilingEyes: AnimatedEmojis.kissingSmilingEyes,
  EmojiType.kissingClosedEyes: AnimatedEmojis.kissingClosedEyes,
  EmojiType.kissingHeart: AnimatedEmojis.kissingHeart,
  EmojiType.heartFace: AnimatedEmojis.heartFace,
  EmojiType.heartEyes: AnimatedEmojis.heartEyes,
  EmojiType.starStruck: AnimatedEmojis.starStruck,

  // Neutral/Thinking
  EmojiType.expressionless: AnimatedEmojis.expressionless,
  EmojiType.neutralFace: AnimatedEmojis.neutralFace,
  EmojiType.mouthNone: AnimatedEmojis.mouthNone,
  EmojiType.thinkingFace: AnimatedEmojis.thinkingFace,
  EmojiType.shushingFace: AnimatedEmojis.shushingFace,
  EmojiType.handOverMouth: AnimatedEmojis.handOverMouth,
  EmojiType.salute: AnimatedEmojis.salute,

  // Negative/Sad
  EmojiType.sad: AnimatedEmojis.sad,
  EmojiType.cry: AnimatedEmojis.cry,
  EmojiType.loudlyCrying: AnimatedEmojis.loudlyCrying,
  EmojiType.sweat: AnimatedEmojis.sweat,
  EmojiType.worried: AnimatedEmojis.worried,
  EmojiType.concerned: AnimatedEmojis.concerned,
  EmojiType.anguished: AnimatedEmojis.anguished,
  EmojiType.scared: AnimatedEmojis.scared,
  EmojiType.frown: AnimatedEmojis.frown,
  EmojiType.bigFrown: AnimatedEmojis.bigFrown,

  // Angry
  EmojiType.angry: AnimatedEmojis.angry,
  EmojiType.rage: AnimatedEmojis.rage,
  EmojiType.triumph: AnimatedEmojis.triumph,
  EmojiType.cursing: AnimatedEmojis.cursing,

  // Surprised
  EmojiType.surprised: AnimatedEmojis.surprised,
  EmojiType.astonished: AnimatedEmojis.astonished,
  EmojiType.gasp: AnimatedEmojis.gasp,
  EmojiType.screaming: AnimatedEmojis.screaming,
  EmojiType.mindBlown: AnimatedEmojis.mindBlown,

  // Sick/Tired
  EmojiType.sick: AnimatedEmojis.sick,
  EmojiType.vomit: AnimatedEmojis.vomit,
  EmojiType.tired: AnimatedEmojis.tired,
  EmojiType.sleep: AnimatedEmojis.sleep,
  EmojiType.sleepy: AnimatedEmojis.sleepy,
  EmojiType.dizzyFace: AnimatedEmojis.dizzyFace,

  // Silly/Fun
  EmojiType.kiss: AnimatedEmojis.kiss,
  EmojiType.stuckOutTongue: AnimatedEmojis.stuckOutTongue,
  EmojiType.zanyFace: AnimatedEmojis.zanyFace,

  // Cat Faces
  EmojiType.smileyCat: AnimatedEmojis.smileyCat,
  EmojiType.smileCat: AnimatedEmojis.smileCat,
  EmojiType.joyCat: AnimatedEmojis.joyCat,
  EmojiType.heartEyesCat: AnimatedEmojis.heartEyesCat,
  EmojiType.smirkCat: AnimatedEmojis.smirkCat,
  EmojiType.kissingCat: AnimatedEmojis.kissingCat,
  EmojiType.screamCat: AnimatedEmojis.screamCat,
  EmojiType.cryingCatFace: AnimatedEmojis.cryingCatFace,
  EmojiType.poutingCat: AnimatedEmojis.poutingCat,

  // Hand Gestures
  EmojiType.thumbsUp: AnimatedEmojis.thumbsUp,
  EmojiType.thumbsDown: AnimatedEmojis.thumbsDown,
  EmojiType.clap: AnimatedEmojis.clap,
  EmojiType.muscle: AnimatedEmojis.muscle,
  EmojiType.wave: AnimatedEmojis.wave,
  EmojiType.raisedHand: AnimatedEmojis.raisedHand,
  EmojiType.foldedHands: AnimatedEmojis.foldedHands,
  EmojiType.heartHands: AnimatedEmojis.heartHands,
  EmojiType.victory: AnimatedEmojis.victory,
  EmojiType.ok: AnimatedEmojis.ok,
  EmojiType.pointRight: AnimatedEmojis.pointRight,
  EmojiType.pointLeft: AnimatedEmojis.pointLeft,
  EmojiType.pointUp: AnimatedEmojis.pointUp,
  EmojiType.pointDown: AnimatedEmojis.pointDown,

  // Nature & Flowers
  EmojiType.bouquet: AnimatedEmojis.bouquet,
  EmojiType.rose: AnimatedEmojis.rose,
  EmojiType.plant: AnimatedEmojis.plant,
  EmojiType.leaves: AnimatedEmojis.leaves,
  EmojiType.snowflake: AnimatedEmojis.snowflake,

  // Animals
  EmojiType.dog: AnimatedEmojis.dog,
  EmojiType.rabbit: AnimatedEmojis.rabbit,
  EmojiType.turtle: AnimatedEmojis.turtle,
  EmojiType.dragon: AnimatedEmojis.dragon,
  EmojiType.unicorn: AnimatedEmojis.unicorn,
  EmojiType.bee: AnimatedEmojis.bee,
  EmojiType.butterfly: AnimatedEmojis.butterfly,

  // Transportation
  EmojiType.rocket: AnimatedEmojis.rocket,
  EmojiType.bicycle: AnimatedEmojis.bicycle,
  EmojiType.automobile: AnimatedEmojis.automobile,
  EmojiType.taxi: AnimatedEmojis.taxi,

  // Sports & Activities
  EmojiType.soccerBall: AnimatedEmojis.soccerBall,
  EmojiType.tennis: AnimatedEmojis.tennis,
  EmojiType.trophy: AnimatedEmojis.trophy,
  EmojiType.goldMedal: AnimatedEmojis.goldMedal,

  // Music
  EmojiType.musicalNotes: AnimatedEmojis.musicalNotes,
  EmojiType.saxophone: AnimatedEmojis.saxophone,
  EmojiType.drum: AnimatedEmojis.drum,

  // Hearts
  EmojiType.redHeart: AnimatedEmojis.redHeart,
  EmojiType.orangeHeart: AnimatedEmojis.orangeHeart,
  EmojiType.yellowHeart: AnimatedEmojis.yellowHeart,
  EmojiType.greenHeart: AnimatedEmojis.greenHeart,
  EmojiType.blueHeart: AnimatedEmojis.blueHeart,
  EmojiType.purpleHeart: AnimatedEmojis.purpleHeart,
  EmojiType.blackHeart: AnimatedEmojis.blackHeart,
  EmojiType.whiteHeart: AnimatedEmojis.whiteHeart,
  EmojiType.pinkHeart: AnimatedEmojis.pinkHeart,
  EmojiType.brokenHeart: AnimatedEmojis.brokenHeart,
  EmojiType.sparklingHeart: AnimatedEmojis.sparklingHeart,

  // Symbols & Effects
  EmojiType.fire: AnimatedEmojis.fire,
  EmojiType.sparkles: AnimatedEmojis.sparkles,
  EmojiType.electricity: AnimatedEmojis.electricity,
  EmojiType.oneHundred: AnimatedEmojis.oneHundred,
  EmojiType.checkMark: AnimatedEmojis.checkMark,
  EmojiType.crossMark: AnimatedEmojis.crossMark,
  EmojiType.warning: AnimatedEmojis.warning,

  // Celebration
  EmojiType.balloon: AnimatedEmojis.balloon,
  EmojiType.birthdayCake: AnimatedEmojis.birthdayCake,
  EmojiType.wrappedGift: AnimatedEmojis.wrappedGift,
  EmojiType.fireworks: AnimatedEmojis.fireworks,
  EmojiType.partyPopper: AnimatedEmojis.partyPopper,
  EmojiType.confettiBall: AnimatedEmojis.confettiBall,
};
