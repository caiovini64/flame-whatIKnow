import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Sprites extends Game {
  late SpriteAnimation runningRobot;

  final robotPosition = Vector2(70, 400);
  final robotSize = Vector2(48, 60);

  @override
  Future<void> onLoad() async {
    runningRobot = await loadSpriteAnimation(
      'robot.png',
      SpriteAnimationData.sequenced(
        amount: 8,
        textureSize: Vector2(16, 18),
        stepTime: 0.1,
      ),
    );
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) {
    runningRobot.getSprite().render(
          canvas,
          position: robotPosition,
          size: robotSize,
        );
  }

  @override
  void update(double dt) {
    runningRobot.update(dt);
  }

  @override
  Color backgroundColor() => const Color(0xff222222);
}
