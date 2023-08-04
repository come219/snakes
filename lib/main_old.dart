/// flutter_snake219 project
/// written by come219, dated 8/6/23
///
/// snake Game in Flutter
///
/// snake: popular game
/// Multiplayer: aws to post highscores?
/// Game Engine: NULL  ~ or ~ Flutter Flame, FlameGame
/// Project: Flutter: dart, json; Java; C, C++; python;
///
/// Backlog:
///
//////// DART 2.18.4
/// dart sdk 3.0.2
/// now update 3.0.3
/// choco install dart-sdk --version number
/// choco install dart-sdk --version 2.18.4 --allow-downgrade --force
///
/// //////// DART 2.18.4
/// dart sdk 3.0.2
/// now update 3.0.3
/// choco install dart-sdk --version number
/// choco install dart-sdk --version 2.18.4 --allow-downgrade --force
///
// /// //PS C:\Users\qqstj> dart --version
// Dart SDK version: 3.0.0 (stable) (Thu May 4 01:11:00 2023 -0700) on "windows_x64"
// PS C:\Users\qqstj>

// ///
// PS C:\Users\qqstj\StudioProjects\flutter_lstand> dart --version
// Dart SDK version: 2.18.4 (stable) (Tue Nov 1 15:15:07 2022 +0000) on "windows_x64"
// PS C:\Users\qqstj\StudioProjects\flutter_lstand>

/**
 * Libraries used in main.dart
 *

 * new classes: 
 * permissions, 
 * hardware request
 * flame??
 *
 *
 */

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// SCREENS
import 'dart:async';
import 'dart:io';

//import 'package:flutter_lstand/core/main_config.dart';
//import 'package:flutter_lstand/experimental/chess_folder/chess2.dart';
//import 'package:flutter_lstand/experimental/dvd_folder/dvd_loadingAnimation.dart';
import 'package:flutter_snake219/experimental/snake_folder/screen_preTrailer_donationScene.dart';
import 'package:flutter_snake219/experimental/snake_folder/snake_screen.dart';
import 'package:flutter_snake219/experimental/working_snake/src/snake_game.dart';

// import 'snake_game';

/// FLAME GAME- old from lstand
import 'package:flame/flame.dart';

/// DART CORE - old from lstand
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//
import 'package:flutter_snake219/core/Themes.dart';
import 'package:flutter_snake219/experimental2/videoplayer_main.dart';

/// UTILS - old from lstand
import 'package:logging/logging.dart';

/// l10n
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'experimental/working_snake/src/snake_enums/game_event.dart';
import 'experimental/working_snake/src/snake_enums/snake_move.dart';
import 'l10n/l10n.dart'; // .17 -> .18

/// l10n : used for internationalisation and time
///

// device info - - old from lstand
import 'package:device_info/device_info.dart';
import 'package:system_info_plus/system_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:check_vpn_connection/check_vpn_connection.dart';
import 'package:disk_space/disk_space.dart';

// splash screen - old from lstand
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';
//import 'package:flutter/material.dart';

//- old from lstand
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// // unity import
// import 'package:flutter_unity_widget_example/screens/no_interaction_screen.dart';
// import 'package:flutter_unity_widget_example/screens/orientation_screen.dart';

// import 'menu_screen.dart';
// import 'screens/api_screen.dart';
// import 'screens/loader_screen.dart';
// import 'screens/simple_screen.dart';

// conway game of life

// dart pub cache clean
import 'dart:math';

/**
 * call SNAKE GAME SCREEN
 */
void callSnakeGameScreen() {
  bool test_controller = debugTester;
  test_controller = true; // not running

  if (test_controller) {
    debugPrint("running snake game ..");
    runApp(SnakeGameScreen()); // snake app test

    //runApp(SnakeGameApp());

    //runApp(SnakeApp());
  }
}

//.....

// Chess 2 screen call
void callChess2Screen() {
  debugPrint("calling Chess2 screen ..");
  // chess 2 game screen call

  if (false) {
    debugPrint("running chess game ..");
    //runApp(Chess2GameScreen());
  }

//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => AppModel(),
//       child: EnPassantApp(),
//     ),
//   );

//_loadFlameAssets();
}

// void _loadFlameAssets() async {
//   List<String> pieceImages = [];
//   for (var theme in PIECE_THEMES) {
//     for (var color in ['black', 'white']) {
//       for (var piece in ['king', 'queen', 'rook', 'bishop', 'knight', 'pawn']) {
//         pieceImages
//             .add('pieces/${formatPieceTheme(theme)}/${piece}_$color.png');
//       }
//     }
//   }
//   await Flame.images.loadAll(pieceImages);
// }

////////////////////////////////////////////////////
//////////////////////////////////////////////////////

/**
bool debugTester
 = true;

 if true it will call debug notes and debug things
 but should be 'false' normally in prod.
 true is for dev.

 * 
 */
bool debugTester = true;

/**
 * debugTester call function
 * 
 * rn: 
 */
void debugTesterCall() {
  print("default: $debugTester");
  debugTester = true;
  print("setting: $debugTester");
  debugPrint("debugTester is off: $debugTester");
}

/**
 * main function 
 * finale start 0
 * 
 * 
 * calls: snake game main
 * 
 *  old: calls chess2 main
 * 
 *   //////
 * 
 * debug game tester callers..
 *   
 o callChess2Screen();   
      chess tests for iq: mmr system, ... ai thing 
      (FLAME ENGINE)
 *    found only in the monopoly multiplayer game at best update
 * 
 o callSnakeGameScreen();  
      snake tests for reaction:            
       (Flutter Framework)
 * easter egg: login, can log hs & cash coins
 * 
 *  ... more test
 */
void main() {
  //debugTesterCall(); // debug call tester

  //callChess2Screen(); // call chess 2 test .. (flame test)

  runApp(SnakeApp());
  //callSnakeGameScreen(); // call SnakeGame test .. (flutter test)

  //runApp(MainMenuApp()); // main menu call
  //runApp(MyVidTestApp()); // run video test app test
  //runApp(MyUnityTestApp()); // unity test app
}

/**
 * Testing implementing snake app
 * instead of snake screen ..
 * 
 * old code ref.:
 *   // snake class
 @override
  Widget build(BuildContext context) {
    bool _isGameStarted = false;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
 */
class SnakeApp extends StatelessWidget {
  //return SnakeGameScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('snake app')),
        body: SnakeGameScreen(),
      ),
    );

    //return SnakeGameScreen();
  }
}

/**
 * class main menu app
 * 
 * calls different apps as a button..
 * 
 * - snake
 * - chess
 * - unity test
 * - vid test
 * 
 * backlog:
 * 
 * doesnt work ..
 */
class MainMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('main menu for snakes flutter_snake219 ')),
        body: Column(children: [
          Container(
              child: ElevatedButton(
            onPressed: () {
              callSnakeGameScreen(); // call SnakeGame test .. (flutter test)
            },
            child: Text("snakes"),
          )),
          Container(
              child: ElevatedButton(
            onPressed: () {
              callChess2Screen(); // call chess game test .. (fame engine test)
            },
            child: Text("chess2"),
          )),
          Container(
              child: ElevatedButton(
            onPressed: () {
              runApp(MyVidTestApp()); // call vid test
            },
            child: Text("vid test"),
          )),
          Container(
              child: ElevatedButton(
            onPressed: () {
              runApp(MyUnityTestApp()); // call unity test
            },
            child: Text("unity test"),
          )),
          Container(
              child: ElevatedButton(
            onPressed: () {
              debugPrint("nothing"); // call nothing test
            },
            child: Text("nothing"),
          )),
        ]),
      ),
    );
  }
}

// video player test in  app..
// implemented conways game of life into call
class MyVidTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Video Grid')),
          body: Stack(
            children: [
              // true
              //     ?
              Container(
                child: true ? GameOfLife() : Text("EMPTY"),
                decoration: BoxDecoration(color: Colors.black),
              ),
              //:
              //VideoGridWidget(), // disabled for testing // not stateful?
            ],
          )),
    );
  }
}

class GameOfLife extends StatefulWidget {
  @override
  _GameOfLifeState createState() => _GameOfLifeState();
}

class _GameOfLifeState extends State<GameOfLife> {
  void randomizeGrid() {
    setState(() {
      grid = List.generate(
          gridSize, (_) => List.generate(gridSize, (_) => Random().nextBool()));
    });
  }

  int gridSize = 25;
  late List<List<bool>> grid;

  @override
  void initState() {
    super.initState();
    initializeGrid();
  }

  void initializeGrid() {
    grid =
        List.generate(gridSize, (_) => List.generate(gridSize, (_) => false));
  }

  void toggleCell(int row, int col) {
    setState(() {
      grid[row][col] = !grid[row][col];
    });
  }

  int countNeighbours(int row, int col) {
    int count = 0;
    for (var i = -1; i <= 1; i++) {
      for (var j = -1; j <= 1; j++) {
        if (i == 0 && j == 0) continue;
        int r = row + i;
        int c = col + j;
        if (r >= 0 && r < gridSize && c >= 0 && c < gridSize) {
          if (grid[r][c]) count++;
        }
      }
    }
    return count;
  }

  void updateGrid() {
    List<List<bool>> newGrid =
        List.generate(gridSize, (_) => List.generate(gridSize, (_) => false));

    for (var i = 0; i < gridSize; i++) {
      for (var j = 0; j < gridSize; j++) {
        int neighbours = countNeighbours(i, j);
        if (grid[i][j]) {
          if (neighbours < 2 || neighbours > 3) {
            newGrid[i][j] = false; // Cell dies
          } else {
            newGrid[i][j] = true; // Cell survives
          }
        } else {
          if (neighbours == 3) {
            newGrid[i][j] = true; // Cell is born
          }
        }
      }
    }

    setState(() {
      grid = newGrid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conway\'s Game of Life'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridSize,
              ),
              itemCount: gridSize * gridSize,
              itemBuilder: (context, index) {
                int row = index ~/ gridSize;
                int col = index % gridSize;
                return GestureDetector(
                  onTap: () => toggleCell(row, col),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: grid[row][col] ? Colors.black : Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: updateGrid,
            child: Text('Next Generation'),
          ),
        ],
      ),
    );
  }
}

/**
 * Unity Widget test call...
 * 
 * https://pub.dev/packages/flutter_unity_widget
 * 
 */
class MyUnityTestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unity Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => MenuScreen(),
        // '/simple': (context) => SimpleScreen(),
        // '/loader': (context) => LoaderScreen(),
        // '/orientation': (context) => OrientationScreen(),
        // '/api': (context) => ApiScreen(),
        // '/none': (context) => NoInteractionScreen(),
      },
    );
  }
}
