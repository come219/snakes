
// snake game widget clone to : https://github.com/Tri7Ratops/flutter_snake/tree/master/example
/***
 *
 *  SNAKE GAME IMPORT
 *
 *  __
 *
 *


    // The MIT License (MIT)
    //
    // Copyright (c) 2021 Tri7Ratops
    //
    // Permission is hereby granted, free of charge, to any person obtaining a
    // copy of this software and associated documentation files (the "Software"),
    // to deal in the Software without restriction, including without limitation
    // the rights to use, copy, modify, merge, publish, distribute, sublicense,
    // and/or sell copies of the Software, and to permit persons to whom the
    // Software is furnished to do so, subject to the following conditions:
    //
    // The above copyright notice and this permission notice shall be included
    // in all copies or substantial portions of the Software.
    //
    // THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    // OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    // FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
    // THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    // LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    // FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
    // IN THE SOFTWARE.
 *
 *
 *
 */

//snake game import libraries
// [board_case]
// import 'package:flutter_snake/src/snake_enums/case_type.dart';
// import 'package:flutter_snake/src/utils/snake_part.dart';
// [snake_part]
// import 'package:flutter_snake/src/snake_enums/snake_body.dart';

/**
 *
 *
 *
    snake_game:
    import 'dart:async';

    import 'package:flutter/material.dart';
    import 'package:flutter_snake/src/snake_board.dart';

    import 'snake_enums/snake_enums.dart';
    import 'utils/utils.dart';

    import 'dart:math';

    import 'package:flutter/material.dart';
    import 'package:flutter_snake/src/snake_enums/snake_enums.dart';
    import 'package:flutter_snake/src/utils/utils.dart';

 * library flutter_snake;

    export 'src/snake_game.dart';
    export 'src/snake_enums/snake_move.dart';
    export 'src/snake_enums/game_event.dart';
 */

// /**
//  * SNAKE GAME enums FOLDER
//  * lib/src/..
//  * /snake_enums/..
//  * case_type.dart
//  * game_event.dart
//  * snake_body.dart
//  * snake_direction.dart
//  * ..
//  * snake_move.dart
//  *
//  *
//  * .. = snake_enums.dart
//  */
// enum CASE_TYPE {
//   food,
//   empty,
// }

// enum GAME_EVENT {
//   win,
//   out_of_map,
//   hit_his_tail,
//   food_eaten,
// }

// enum SNAKE_BODY {
//   head,
//   body,
//   tail,
// }

// enum SNAKE_DIRECTION {
//   left,
//   right,
//   up,
//   down,
// }
// enum SNAKE_MOVE {
//   front,
//   left,
//   right,
// }

// /**
//  *  /snake_enums.dart;
//  *
//     export 'case_type.dart';
//     export 'game_event.dart';
//     export 'snake_move.dart';
//     export 'snake_body.dart';
//     export 'snake_direction.dart';
//  */

// /**
//  * SNAKE GAME utils FOLDER
//  * /libs/src/
//  * /utils/..
//  * board_case.dart
//  * snake_part.dart
//  * utils.dart
//  */
// class BoardCase {
//   SnakePart? partSnake;
//   CASE_TYPE caseType;

//   BoardCase({
//     this.partSnake,
//     this.caseType = CASE_TYPE.empty,
//   });

//   class SnakePart {
//   SNAKE_BODY type;
//   int posY;
//   int posX;

//   SnakePart? next;
//   SnakePart? previous;

//   SnakePart({
//   required this.type,
//   required this.posY,
//   required this.posX,
//   this.previous,
//   this.next,
//   });
//   }

//   /**
//    * /utils.dart
//    *

//       export 'board_case.dart';
//       export 'snake_part.dart';

//    */

//   /**
//    * SNAKE GAME lib FOLDER
//    * /lib/src/..
//    * snake_board.dart
//    * snake_game.dart
//    * snake.dart
//    */
//   class SnakeBoard {
//   /// The board
//   final List<List<BoardCase>> _board = [];

//   /// Pointer to the snake's head
//   late SnakePart _snake;

//   /// Pointer to snake's tail
//   late SnakePart _tail;

//   /// Number of case horizontally (x)
//   final int numberCaseHorizontally;

//   /// Number of case horizontally (y)
//   final int numberCaseVertically;

//   SnakeBoard({
//   required this.numberCaseHorizontally,
//   required this.numberCaseVertically,
//   }) {
//   /// Instanciate the board
//   _initBoard();

//   /// Create the snake
//   _snake = new SnakePart(
//   type: SNAKE_BODY.head, posY: numberCaseVertically ~/ 2, posX: 5);
//   _snake.next = new SnakePart(
//   type: SNAKE_BODY.body,
//   posY: numberCaseVertically ~/ 2,
//   posX: 4,
//   previous: _snake);
//   _snake.next!.next = new SnakePart(
//   type: SNAKE_BODY.body,
//   posY: numberCaseVertically ~/ 2,
//   posX: 3,
//   previous: _snake.next!);
//   _snake.next!.next!.next = new SnakePart(
//   type: SNAKE_BODY.body,
//   posY: numberCaseVertically ~/ 2,
//   posX: 2,
//   previous: _snake.next!.next!);
//   _snake.next!.next!.next!.next = new SnakePart(
//   type: SNAKE_BODY.tail,
//   posY: numberCaseVertically ~/ 2,
//   posX: 1,
//   previous: _snake.next!.next!.next!);
//   _tail = _snake.next!.next!.next!.next!;

//   /// Update the board with the snake
//   _updateBoard();
//   }

//   /// Manage the snake movement on the right
//   _snakeMoveRight(SNAKE_DIRECTION direction) {
//   switch (direction) {
//   case SNAKE_DIRECTION.left:
//   _snake.posY--;
//   break;
//   case SNAKE_DIRECTION.right:
//   _snake.posY++;
//   break;
//   case SNAKE_DIRECTION.up:
//   _snake.posX++;
//   break;
//   case SNAKE_DIRECTION.down:
//   _snake.posX--;
//   break;
//   }
//   }

//   /// Manage the snake movement on the left
//   _snakeMoveLeft(SNAKE_DIRECTION direction) {
//   switch (direction) {
//   case SNAKE_DIRECTION.left:
//   _snake.posY++;
//   break;
//   case SNAKE_DIRECTION.right:
//   _snake.posY--;
//   break;
//   case SNAKE_DIRECTION.up:
//   _snake.posX--;
//   break;
//   case SNAKE_DIRECTION.down:
//   _snake.posX++;
//   break;
//   }
//   }

//   /// Manage the snake movement on the front
//   _snakeMoveFront(SNAKE_DIRECTION direction) {
//   switch (direction) {
//   case SNAKE_DIRECTION.left:
//   _snake.posX--;
//   break;
//   case SNAKE_DIRECTION.right:
//   _snake.posX++;
//   break;
//   case SNAKE_DIRECTION.up:
//   _snake.posY--;
//   break;
//   case SNAKE_DIRECTION.down:
//   _snake.posY++;
//   break;
//   }
//   }

//   /// Manage the snake movement
//   GAME_EVENT? moveSnake(SNAKE_MOVE move) {
//   GAME_EVENT? event;
//   SNAKE_DIRECTION direction;

//   /// Check his direction
//   if (_snake.next!.posX == _snake.posX) {
//   if (_snake.next!.posY < _snake.posY) {
//   direction = SNAKE_DIRECTION.down;
//   } else {
//   direction = SNAKE_DIRECTION.up;
//   }
//   } else {
//   if (_snake.next!.posX < _snake.posX) {
//   direction = SNAKE_DIRECTION.right;
//   } else {
//   direction = SNAKE_DIRECTION.left;
//   }
//   }
//   if (_board[_snake.posY][_snake.posX].caseType == CASE_TYPE.food) {
//   /// Add a new part of the snake if the head is on a food
//   SnakePart newPart = SnakePart(
//   type: SNAKE_BODY.body,
//   posY: _snake.posY,
//   posX: _snake.posX,
//   previous: _snake,
//   next: _snake.next);
//   _snake.next!.previous = newPart;
//   _snake.next = newPart;
//   event = GAME_EVENT.food_eaten;
//   } else {
//   /// Move all the snake depends on his previous part
//   SnakePart? snakeTmp = _tail;
//   while (snakeTmp?.previous != null) {
//   snakeTmp!.posX = snakeTmp.previous!.posX;
//   snakeTmp.posY = snakeTmp.previous!.posY;
//   snakeTmp = snakeTmp.previous;
//   }
//   }
//   if (move == SNAKE_MOVE.right) {
//   _snakeMoveRight(direction);
//   } else if (move == SNAKE_MOVE.left) {
//   _snakeMoveLeft(direction);
//   } else {
//   _snakeMoveFront(direction);
//   }

//   /// Check if the snake go out of the map
//   if (_snake.posX < 0 ||
//   _snake.posX >= numberCaseHorizontally ||
//   _snake.posY < 0 ||
//   _snake.posY >= numberCaseVertically) {
//   return GAME_EVENT.out_of_map;
//   }

//   /// Check if the snake hit his tail and update the board
//   return _updateBoard() ?? event;
//   }

//   /// Update the board
//   GAME_EVENT? _updateBoard() {
//   bool hitHisTail = false;
//   for (List<BoardCase> boardLine in _board) {
//   for (BoardCase boardCase in boardLine) {
//   boardCase.partSnake = null;
//   }
//   }
//   SnakePart? snakeTmp = _snake;
//   while (snakeTmp != null && getCase(snakeTmp.posY, snakeTmp.posX) != null) {
//   if (_board[snakeTmp.posY][snakeTmp.posX].partSnake != null) {
//   hitHisTail = true;
//   }
//   if (snakeTmp.next == null) {
//   _board[snakeTmp.posY][snakeTmp.posX].caseType = CASE_TYPE.empty;
//   }
//   _board[snakeTmp.posY][snakeTmp.posX].partSnake = snakeTmp;
//   snakeTmp = snakeTmp.next;
//   }
//   return hitHisTail ? GAME_EVENT.hit_his_tail : _manageFood();
//   }

//   /// Manage the food and his apparition
//   _manageFood() {
//   List<BoardCase> emptyCases = [];
//   int nbFood = 0;

//   for (List<BoardCase> boardLine in _board) {
//   for (BoardCase boardCase in boardLine) {
//   if (boardCase.caseType == CASE_TYPE.empty &&
//   boardCase.partSnake == null) {
//   emptyCases.add(boardCase);
//   } else if (boardCase.caseType == CASE_TYPE.food &&
//   boardCase.partSnake == null) {
//   nbFood++;
//   }
//   }
//   }
//   if (nbFood == 0) {
//   /// Place a food on a empty case randomly
//   var rng = new Random();
//   emptyCases[rng.nextInt(emptyCases.length)].caseType = CASE_TYPE.food;
//   }
//   if (emptyCases.isEmpty) {
//   return GAME_EVENT.win;
//   }
//   }

//   /// Init the board with empty case
//   _initBoard() {
//   int x = 0;
//   int y = 0;

//   while (y < this.numberCaseVertically) {
//   x = 0;
//   _board.add([]);
//   while (x < this.numberCaseHorizontally) {
//   _board[y].add(BoardCase());
//   x++;
//   }
//   y++;
//   }
//   }

//   /// Get specific case
//   BoardCase? getCase(int y, int x) {
//   try {
//   return _board[y][x];
//   } catch (e) {
//   return null;
//   }
//   }

//   /// Get specific line
//   List<BoardCase>? getLine(int index) {
//   try {
//   return _board[index];
//   } catch (e) {
//   return null;
//   }
//   }

//   /// Get the board
//   List<List<BoardCase>> get board => _board;
//   }

// // ignore: must_be_immutable
//   class SnakeGame extends StatefulWidget {
//   /// Direction for the next tick
//   SNAKE_MOVE? _direction;

//   /// Define the direction the snake will take on the next tick
//   set nextDirection(SNAKE_MOVE move) => _direction = move;

//   /// Get the next direction the snake will take on the next tick
//   SNAKE_MOVE get getDirection => _direction ?? SNAKE_MOVE.front;

//   /// Case width / height (It's a square)
//   double caseWidth;

//   /// Duration between each ticks
//   final Duration durationBetweenTicks;

//   /// Number of case horizontally (x)
//   final int numberCaseHorizontally;

//   /// Number of case vertically (y)
//   final int numberCaseVertically;

//   /// If defines, the controller stream receive the game event
//   final StreamController<GAME_EVENT>? controllerEvent;

//   /// Color variation for the background
//   final Color colorBackground1;
//   final Color colorBackground2;

//   /// Snake image body and fruit
//   final String? snakeHeadImgPath;
//   final String? snakeBodyImgPath;
//   final String? snakeBodyTurnImgPath;
//   final String? snakeTailImgPath;
//   final String? snakeFruitImgPath;

//   SnakeGame({
//   Key? key,
//   required this.caseWidth,
//   required this.numberCaseHorizontally,
//   required this.numberCaseVertically,
//   this.durationBetweenTicks = const Duration(milliseconds: 500),
//   this.controllerEvent,
//   this.colorBackground1 = Colors.greenAccent,
//   this.colorBackground2 = Colors.green,
//   this.snakeBodyImgPath,
//   this.snakeBodyTurnImgPath,
//   this.snakeTailImgPath,
//   this.snakeFruitImgPath,
//   this.snakeHeadImgPath,
//   }) : super(
//   key: key,
//   ) {
//   if (numberCaseVertically < 10 || numberCaseHorizontally < 10) {
//   throw ("Error SnakeGame: numberCaseVertically and numberCaseHorizontally can't be inferior of 10");
//   }
//   }

//   @override
//   _SnakeGameState createState() => _SnakeGameState();
//   }

//   class _SnakeGameState extends State<SnakeGame> {
//   /// Manage the movement of the snake
//   StreamController<SNAKE_MOVE>? controller;

//   /// Board management
//   SnakeBoard? _board;

//   /// Loop for the game
//   Timer? timer;

//   @override
//   void initState() {
//   super.initState();

//   /// Init the board
//   _board = SnakeBoard(
//   numberCaseHorizontally: widget.numberCaseHorizontally,
//   numberCaseVertically: widget.numberCaseVertically,
//   );

//   /// Init the controller
//   if (controller == null) {
//   controller = StreamController<SNAKE_MOVE>();
//   }

//   /// and listen the events
//   controller?.stream.listen((value) {
//   _moveSnake(value);
//   });

//   /// Defines the loop for the game
//   timer = Timer.periodic(widget.durationBetweenTicks, (Timer t) {
//   controller?.add(widget.getDirection);
//   widget.nextDirection = SNAKE_MOVE.front;
//   });
//   }

//   @override
//   void dispose() {
//   /// Dispose the timer.
//   timer?.cancel();
//   super.dispose();
//   }

//   _moveSnake(SNAKE_MOVE direction) {
//   /// move the snake on the board
//   GAME_EVENT? event = _board?.moveSnake(direction);
//   setState(() {});

//   /// Check if a special event is returned
//   if (event != null) {
//   widget.controllerEvent?.add(event);

//   /// Check if the game is finished
//   if (event == GAME_EVENT.win ||
//   event == GAME_EVENT.hit_his_tail ||
//   event == GAME_EVENT.out_of_map) {
//   timer?.cancel();
//   timer = null;
//   }
//   }
//   }

//   @override
//   Widget build(BuildContext context) {
//   return Container(
//   color: Colors.grey,
//   width: widget.caseWidth * widget.numberCaseHorizontally,
//   height: widget.caseWidth * widget.numberCaseVertically,
//   child: _printBoard(),
//   );
//   }

//   /// Look all the board and print it (Board first, the the snake / fruit)
//   Column _printBoard() {
//   List<Widget> items = [];
//   int y = 0;
//   int x = 0;

//   /// Check each line of the board
//   while (_board?.getLine(y) != null) {
//   List<Widget> tmp = [];
//   x = 0;

//   /// Get a specific case of the board (y, x)
//   BoardCase? boardCase = _board?.getCase(y, x);

//   /// Loop on each case of the line
//   while (boardCase != null) {
//   Color? colorCase;
//   bool? defaultImg;
//   String imgIcon = "";
//   int quarterTurns = 0;

//   /// Create the checkerboard with 2 colors
//   colorCase = (x % 2 == 0 && y % 2 == 0) || (x % 2 == 1 && y % 2 == 1)
//   ? widget.colorBackground1
//       : widget.colorBackground2;

//   /// Check if the case contain food
//   switch (boardCase.caseType) {
//   case CASE_TYPE.food:
//   defaultImg = widget.snakeFruitImgPath == null;
//   imgIcon =
//   widget.snakeFruitImgPath ?? "assets/default_snake_fruit.png";
//   break;
//   default:
//   }

//   /// Check if a snake is on it
//   if (boardCase.partSnake != null) {
//   /// Check his type
//   switch (boardCase.partSnake!.type) {
//   case SNAKE_BODY.head:
//   defaultImg = widget.snakeHeadImgPath == null;
//   imgIcon =
//   widget.snakeHeadImgPath ?? "assets/default_snake_head.png";
//   quarterTurns = _rotateHead(boardCase.partSnake!);
//   break;
//   case SNAKE_BODY.tail:
//   defaultImg = widget.snakeTailImgPath == null;
//   imgIcon =
//   widget.snakeTailImgPath ?? "assets/default_snake_tail.png";
//   quarterTurns = _rotateTail(boardCase.partSnake!);
//   break;
//   default:
//   if (boardCase.partSnake!.previous!.posX ==
//   boardCase.partSnake!.next!.posX ||
//   boardCase.partSnake!.previous!.posY ==
//   boardCase.partSnake!.next!.posY) {
//   defaultImg = widget.snakeBodyImgPath == null;
//   quarterTurns = _rotateBody(boardCase.partSnake!);
//   imgIcon =
//   widget.snakeBodyImgPath ?? "assets/default_snake_body.png";
//   } else {
//   defaultImg = widget.snakeBodyTurnImgPath == null;
//   quarterTurns = _rotateBodyTurn(boardCase.partSnake!);
//   imgIcon = widget.snakeBodyTurnImgPath ??
//   "assets/default_snake_turn.png";
//   }
//   }
//   }
//   tmp.add(
//   Stack(
//   children: [
//   Container(
//   width: widget.caseWidth,
//   height: widget.caseWidth,
//   color: colorCase,
//   ),
//   defaultImg != null
//   ? RotatedBox(
//   quarterTurns: quarterTurns,
//   child: defaultImg
//   ? Image.asset(
//   imgIcon,
//   width: widget.caseWidth,
//   height: widget.caseWidth,
//   package: 'flutter_snake',
//   )
//       : Image(
//   image: AssetImage(imgIcon),
//   width: widget.caseWidth,
//   height: widget.caseWidth,
//   ),
//   )
//       : Container(),
//   ],
//   ),
//   );
//   x++;
//   boardCase = _board?.getCase(y, x);
//   }
//   items.add(
//   Row(
//   children: tmp,
//   ),
//   );
//   y++;
//   }

//   return Column(
//   children: items,
//   );
//   }

//   /// Rotate the head depends on direction
//   int _rotateHead(SnakePart partSnake) {
//   if (partSnake.next!.posX == partSnake.posX) {
//   if (partSnake.next!.posY < partSnake.posY) {
//   return 3;
//   } else {
//   return 1;
//   }
//   } else {
//   if (partSnake.next!.posX < partSnake.posX) {
//   return 2;
//   } else {
//   return 0;
//   }
//   }
//   }

//   /// Rotate the tail depends on direction
//   int _rotateTail(SnakePart partSnake) {
//   if (partSnake.previous!.posX == partSnake.posX) {
//   if (partSnake.previous!.posY < partSnake.posY) {
//   return 0;
//   } else {
//   return 2;
//   }
//   } else {
//   if (partSnake.previous!.posX < partSnake.posX) {
//   return 3;
//   } else {
//   return 1;
//   }
//   }
//   }

//   /// Rotate the body depends on direction
//   int _rotateBody(SnakePart partSnake) {
//   if (partSnake.previous!.posX == partSnake.posX) {
//   return 1;
//   } else {
//   return 0;
//   }
//   }

//   /// Rotate the body turn depends on direction
//   int _rotateBodyTurn(SnakePart partSnake) {
//   SnakePart previous = partSnake.previous!;
//   SnakePart next = partSnake.next!;

//   SNAKE_DIRECTION directionPrevious =
//   _rotateBodyTurnCheckDirection(partSnake, previous);
//   SNAKE_DIRECTION directionNext =
//   _rotateBodyTurnCheckDirection(partSnake, next);

//   if (directionNext == SNAKE_DIRECTION.down &&
//   directionPrevious == SNAKE_DIRECTION.right) {
//   return 1;
//   }
//   if (directionNext == SNAKE_DIRECTION.down &&
//   directionPrevious == SNAKE_DIRECTION.left) {
//   return 2;
//   }
//   if (directionNext == SNAKE_DIRECTION.up &&
//   directionPrevious == SNAKE_DIRECTION.left) {
//   return 3;
//   }
//   if (directionNext == SNAKE_DIRECTION.left &&
//   directionPrevious == SNAKE_DIRECTION.up) {
//   return 3;
//   }
//   if (directionNext == SNAKE_DIRECTION.left &&
//   directionPrevious == SNAKE_DIRECTION.down) {
//   return 2;
//   }
//   if (directionNext == SNAKE_DIRECTION.right &&
//   directionPrevious == SNAKE_DIRECTION.down) {
//   return 1;
//   }
//   return 0;
//   }

//   /// return the direction of a snake part to another one.
//   SNAKE_DIRECTION _rotateBodyTurnCheckDirection(
//   SnakePart partSnake, SnakePart compare) {
//   if (compare.posX == partSnake.posX) {
//   if (compare.posY < partSnake.posY) {
//   return SNAKE_DIRECTION.down;
//   } else {
//   return SNAKE_DIRECTION.up;
//   }
//   } else {
//   if (compare.posX < partSnake.posX) {
//   return SNAKE_DIRECTION.right;
//   } else {
//   return SNAKE_DIRECTION.left;
//   }
//   }
//   }
//   }

/**
   * SNAKE GAME lib FOLDER
   *
   * /lib/..
   *
   *
   * flutter_snake.dart
   *
   * ..? not main.. not example ..
   */

/**
 * snake game main call ...
 *
 *
 *  v1 2/6/23
    - '_SnakeGameScreenState' is from 'package:flutter_lstand/main.dart' ('lib/main.dart').
    Try correcting the name to the name of an existing method, or defining a method named 'RaisedButton'.
    RaisedButton(
    ^^^^^^^^^^^^

    ChatGPT
    Apologies for the confusion. The RaisedButton widget has been deprecated since Flutter version 2.0.0. The recommended approach is to use the ElevatedButton widget instead. Here's an updated version of the code using ElevatedButton:
*/
// class SnakeGameApp extends StatelessWidget {

//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Snake Game',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: SnakeGameScreen(),
//     );
//   }
// }