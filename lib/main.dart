import 'package:estudo_flame/my_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final myGame = MyGame();
  runApp(GameWidget(game: myGame));
}
