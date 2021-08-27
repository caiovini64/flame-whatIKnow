import 'dart:ui';

import 'package:flame/palette.dart';

class GameObject {
  int speed = 400;
  Rect position;
  int direction = 1;
  final paint = BasicPalette.white.paint();

  GameObject(this.position);
}
