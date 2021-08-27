import 'package:estudo_flame/moving_square/my_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final myGame = MovingSquare();
  runApp(GameWidget(game: myGame));
}
