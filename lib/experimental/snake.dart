// snake game

//invoked by moving/dragging the logo of the game when it is a specific theme

// plays a leveling snake game that can be saved by logging in

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

// void main() {
//   runApp(SnakeGame());
// }

// enum Direction { up, down, left, right }

// class SnakeGame extends StatefulWidget {
//   @override
//   _SnakeGameState createState() => _SnakeGameState();
// }

// class _SnakeGameState extends State<SnakeGame> {
//   final int rows = 20;
//   final int columns = 20;
//   final int snakeInitialLength = 3;
//   final Duration snakeSpeed = Duration(milliseconds: 200);

//  late List<Offset> snake;
//   late Offset food;
//   late List<List<int>> grid;
//   late Direction direction;
//   late bool isGameOver;
//   late Timer timer;

//   @override
//   void initState() {
//     super.initState();
//     resetGame();
//   }

//   void resetGame() {
//     setState(() {
//       grid = List<List<int>>.generate(
//         rows,
//         (row) => List<int>.filled(columns, 0),
//       );
//       snake = [];
//       direction = Direction.right;
//       isGameOver = false;

//       final rng = Random();
//       int x = rng.nextInt(columns - snakeInitialLength);
//       int y = rng.nextInt(rows);
//       for (int i = 0; i < snakeInitialLength; i++) {
//         snake.add(Offset(x.toDouble() + i, y.toDouble()));
//       }

//       generateFood();
//     });

//     startGame();
//   }

//   void startGame() {
//     timer = Timer.periodic(snakeSpeed, (timer) {
//       if (!isGameOver) {
//         setState(() {
//           moveSnake();
//         });
//       } else {
//         timer.cancel();
//       }
//     });
//   }

//   void moveSnake() {
//     final head = snake.first;
//     Offset newHead;
//     switch (direction) {
//       case Direction.up:
//         newHead = Offset(head.dx, head.dy - 1);
//         break;
//       case Direction.down:
//         newHead = Offset(head.dx, head.dy + 1);
//         break;
//       case Direction.left:
//         newHead = Offset(head.dx - 1, head.dy);
//         break;
//       case Direction.right:
//         newHead = Offset(head.dx + 1, head.dy);
//         break;
//     }

//     if (isCollision(newHead)) {
//       setState(() {
//         isGameOver = true;
//       });
//       return;
//     }

//     setState(() {
//       snake.insert(0, newHead);

//       if (newHead == food) {
//         generateFood();
//       } else {
//         snake.removeLast();
//       }
//     });
//   }

//   bool isCollision(Offset position) {
//     if (position.dx < 0 ||
//         position.dx >= columns ||
//         position.dy < 0 ||
//         position.dy >= rows) {
//       return true; // Hit the wall
//     }
//     if (snake.sublist(1).contains(position)) {
//       return true; // Hit itself
//     }
//     return false;
//   }

//   void generateFood() {
//     final rng = Random();
//     int x, y;
//     do {
//       x = rng.nextInt(columns);
//       y = rng.nextInt(rows);
//     } while (snake.contains(Offset(x.toDouble(), y.toDouble())));

//     food = Offset(x.toDouble(), y.toDouble());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Snake Game'),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: GestureDetector(
//                 onVerticalDragUpdate: (details) {
//                   if (direction != Direction.up &&
//                       details.delta.dy > 0) // swipe down
//                 if (direction != Direction.down &&
//                     details.delta.dy < 0) // swipe up
//                   direction = Direction.up;
//               },
//               onHorizontalDragUpdate: (details) {
//                 if (direction != Direction.left &&
//                     details.delta.dx > 0) // swipe right
//                   direction = Direction.right;
//                 else if (direction != Direction.right &&
//                     details.delta.dx < 0) // swipe left
//                   direction = Direction.left;
//               },
//               child: GridView.builder(
//                 itemCount: rows * columns,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: columns,
//                 ),
//                 itemBuilder: (context, index) {
//                   final row = index ~/ columns;
//                   final col = index % columns;
//                   final cellValue = grid[row][col];
//                   final isSnakeCell = snake.contains(Offset(col.toDouble(), row.toDouble()));
//                   final isFoodCell = food == Offset(col.toDouble(), row.toDouble());
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: isSnakeCell ? Colors.green : (isFoodCell ? Colors.red : Colors.grey),
//                       border: Border.all(color: Colors.black),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             if (isGameOver)
//               Text(
//                 'Game Over',
//                 style: TextStyle(fontSize: 24),
//               ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: isGameOver ? resetGame : null,
//               child: Text('Restart'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
