import 'package:estudo_flame/moving_square/my_game.dart';
import 'package:estudo_flame/sprites/sprites.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final myGame = Sprites();
  runApp(GameWidget(game: myGame));
}
