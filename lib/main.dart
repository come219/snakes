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

 * new classes: permissions, hardware request
 *
 * flame??
 *
 *
 */

/// SCREENS
import 'dart:async';
import 'dart:io';

//import 'package:flutter_lstand/core/main_config.dart';
//import 'package:flutter_lstand/experimental/chess_folder/chess2.dart';
//import 'package:flutter_lstand/experimental/dvd_folder/dvd_loadingAnimation.dart';
import 'package:flutter_snake219/experimental/snake_folder/screen_preTrailer_donationScene.dart';
import 'package:flutter_snake219/experimental/snake_folder/snake_screen.dart';
import 'package:flutter_snake219/experimental/working_snake/src/snake_game.dart';


/// FLAME GAME
import 'package:flame/flame.dart';

/// DART CORE
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lstand/core/Themes.dart';

/// UTILS
import 'package:logging/logging.dart';

/// l10n
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'experimental/working_snake/src/snake_enums/game_event.dart';
import 'experimental/working_snake/src/snake_enums/snake_move.dart';
import 'l10n/l10n.dart';

/// l10n : used for internationalisation and time
///

import 'package:device_info/device_info.dart';
import 'package:system_info_plus/system_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:check_vpn_connection/check_vpn_connection.dart';
import 'package:disk_space/disk_space.dart';

// splash screen
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';
//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


/**
 * call SNAKE GAME SCREEN
 */
void callSnakeGameScreen() {
  bool test_controller = debugTester;
  test_controller = false; // not running

  if (test_controller) {
    debugPrint("running snake game ..");
    runApp(SnakeGameScreen()); // snake app test
    //runApp(SnakeGameApp());
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
bool debugTester = false;

/**
 * debugTester call function
 * 
 * rn: 
 */
void debugTesterCall() {
  print("default: $debugTester");
  debugTester = false;
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
 * 
 * new notes:
 * // then call main_v2?
 * main now calls main_v2 after.
 * 
 * old notes:
 * rename to test_main
 * and rename main_v2 to main
 * vice versa
 * 
 * // main_v2 app should be able to call main()..,
  // then ..
 *
 * 
 *   //////
 * 
 * debug game tester callers..
 *   
 - callChess2Screen();   chess tests for iq: mmr system, ... ai thing
                   * found only in the monopoly multiplayer game at best update
 - callSnakeGameScreen();  snake tests for reaction: 
                                  * easter egg: login, can log hs & cash coins
 
 */
void main() {
  debugTesterCall(); // debug call tester

 

  //callChess2Screen(); // call chess 2 test .. (flame test)

  callSnakeGameScreen(); // call SnakeGame test .. (flutter test)

}

