import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class MyGame extends Game {
  late GameObject square;

  @override
  Future<void> onLoad() {
    square = GameObject(Rect.fromLTWH(0, 50, 100, 100));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    square.position = square.position.translate(
      square.speed * square.direction * dt,
      0,
    );
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRect(square.position, square.paint);
  }
}

class GameObject {
  int speed = 400;
  Rect position;
  int direction = 1;
  final paint = BasicPalette.white.paint();

  GameObject(this.position);
}
