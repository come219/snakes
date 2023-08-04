import 'dart:ui';

import 'package:flame/experimental.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_snake219/sprite_object.dart';

class snakeGame_flame extends StatefulWidget {
  const snakeGame_flame({super.key});

  @override
  State<snakeGame_flame> createState() => _snakeGame_flameState();
}

class _snakeGame_flameState extends State<snakeGame_flame> {
  late _snakeGame_game _game;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _game = new _snakeGame_game();
    //game stasrt
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          GameWidget(game: _game),
        ],
      )),
    );
  }
}

class _snakeGame_game extends FlameGame with HasTappableComponents {
  static TextPaint textPaint = TextPaint(
      style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'));
  TextComponent text1 =
      new TextComponent(textRenderer: textPaint, text: 'almonds are nuts')
        ..x = 100
        ..y = 300;

  late spriteObject_test testSprite = new spriteObject_test();

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(text1);
    add(testSprite);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
  }

  // @override
  // void onTapDown(TapDownEvent details) {
  //   super.onTapDown(details);
  // }

}
