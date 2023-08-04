import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_snake219/experimental/snake_folder/screen_preTrailer_donationScene.dart';

import 'package:flutter_snake219/experimental/working_snake/flutter_snake.dart';

class SnakeGameScreen extends StatefulWidget {
  @override
  _SnakeGameScreenState createState() => _SnakeGameScreenState();
}

/**
   * 
   * GAME CODE>>>>
   
      'Snake Game219 - v. 0.1 (working, no images.)',
      'Snake 🐍🐍🐍 - v. 0.2 new visuals
      'A snake game #219' - v. 0.22 working donation/refactor
    - 'A snake game #219' - v. 0.22 ~working donation/refactor
    - 'Ported flutter_snake219' - v. 0.23 working port on different branch
    - 'flutter_snake219'        - v. 0.24 nicely work port & cleaner code

    BACKLOG:
    - shop
    - levels
    - images, ui update, bg video use?
    - reaction timer
    - game timer
    - duration timer
    - android ui/ dynamic ui
    - language(s) support.. l10n
    - screen - preTrailer - donation?

   */
class _SnakeGameScreenState extends State<SnakeGameScreen> {
// button not active when not available --> coloured grey-ed out when not active
// only available if eat food 3 times in a row in a specific duration.
// increases the size of the room, resets snake size to smallest..?
// introduces enemy unit? and different looking terrain?
// everytime u do next level - it can pause the game fully,
// reaches a snake store stage / scene. (UPGRADE STUFF)
  Widget nextLevelContainer() {
    return InkWell(
      onTap: () {
        //snakeGame!.controllerEvent!..close();
        debugPrint("next level");
        // Add your onPressed logic here
        snakeGame = new SnakeGame(
          caseWidth: 25.0,
          numberCaseHorizontally: 21,
          numberCaseVertically: 21,
          controllerEvent: controller,
          durationBetweenTicks: Duration(milliseconds: 400),
          colorBackground1: Color(0XFF7CFC00),
          colorBackground2: Color(0XFF32CD32),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black,
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Next level !!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  StreamController<GAME_EVENT>? controller;
  SnakeGame? snakeGame;

  @override
  void initState() {
    super.initState();
    debugPrint("testing init state of snagame screen state");
    setVersionNumber();
    setDebugTitle();
    controller = StreamController<GAME_EVENT>();
    controller?.stream.listen((GAME_EVENT value) {
      print(value.toString());
    });

    /**
     * Snake Game OBJECT CALL AND CREATE
     * working snake game
     * no images...
     * 
     * old:
     * //DISABLED CAUSE TESTING... 
     * 
     * 
     */
    snakeGame = new SnakeGame(
      caseWidth: 25.0,
      numberCaseHorizontally: 11,
      numberCaseVertically: 11,
      controllerEvent: controller,
      durationBetweenTicks: Duration(milliseconds: 400),
      colorBackground1: Color(0XFF7CFC00),
      colorBackground2: Color(0XFF32CD32),
    );
  }

  @override
  void dispose() {
    controller?.close();
    super.dispose();
  }

  int i_release = 0;
  int i_patch = 23;
  int i_build = 0;

  String s_versionNumber = 'v. 0.0.0'; //'v. 0.22.0';

  void setVersionNumber() {
    s_versionNumber = 'v. $i_release.$i_patch.$i_build ';
    debugPrint(s_versionNumber);
  }

  String s_debug_title = 'debug mode - ...';
  void setDebugTitle() {
    s_debug_title =
        'debug mode - $s_versionNumber - working port on different branch';
  }

  // can change to whatever you want
  // good for versioning quality
  String s_snakegame_title = "#219 snake game";

  Widget startpauseRow(bool _isGameStarted) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isGameStarted = !_isGameStarted;

              //invoke snake game
              //snakeGame.initState();
            });
            if (_isGameStarted) {
              // Logic to start the game
              debugPrint("start game pressed .. $_isGameStarted");
            } else {
              // Logic to restart the game
              debugPrint("restart game pressed .. $_isGameStarted");
            }
          },
          child: Text(_isGameStarted ? 'Restart Game' : 'Start Game'),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            // Logic to pause/resume the game
            bool temp_pause = false;
            setState(() {
              temp_pause = !temp_pause;
            });
            if (temp_pause) {
              // Logic to pause the game

              // change game time to something really long
            } else {
              // Logic to resume the game
            }
          },

          // coloured grey-ed out when not active
          child: Text(
            'Pause Game',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool _isGameStarted = false;

    //Timer a = snakeGame.getTimer();

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(s_debug_title),
            ),
            body:
                // DISABLED cause incorrect
                //  Builder(builder: (BuildContext context) {
                //   return
                Stack(
              children: [
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).popUntil(
                                ModalRoute.withName(
                                    '/preTrailer_DonationScreen'),
                              );
                              // DISABLED FOR ERROR
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(builder: (_context) => preTrailer_DonationScreen()),
                              // );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        preTrailerDonationScreen()),
                              );
                            },
                            child: Text(
                              'Extra!',
                              // Exit / return to login === WHEN RELEASE
                              // stays extra -> pre trailer screen
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        s_snakegame_title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Stage 1 // Duration of game: 00 // Time since started: 00:01',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),

                      startpauseRow(_isGameStarted),
                      SizedBox(height: 8),

                      // Add your game widget here to display the Snake game
                      // Replace Container with your game widget
                      Container(
                        width: 400,
                        height: 400,
                        color: Colors.black54,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              snakeGame ?? Text('[Snake game goes here]'),
                              Text("Not initialized"),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => snakeGame?.nextDirection =
                                        SNAKE_MOVE.left,
                                    icon: Icon(Icons.subdirectory_arrow_left),
                                  ),
                                  Text("🐍🐍🐍"),
                                  IconButton(
                                    onPressed: () => snakeGame?.nextDirection =
                                        SNAKE_MOVE.right,
                                    icon: Icon(Icons.subdirectory_arrow_right),
                                  ),
                                ],
                              ),
                              Text("score: 5"),
                            ]),
                      ),

                      SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          slowContainer(), // coloured text container - slow
                          SizedBox(width: 4),
                          DifficultySlider(), // snake game difficulty slider
                          SizedBox(width: 4),
                          fastContainer(), // coloured text container - fast
                        ],
                      ),
                      nextLevelContainer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          soundButtonContainer(),
                          shareHiscoreContainer(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
            // UNSURE COMMENT ...
            //or Container(), error code
            //})
            ));
  }

  /**
   * widget sound button container
   */
  Widget soundButtonContainer() {
    return Container(
      child: SoundButtonContainer(),
    );
  }

  /**
   * widget fast container
   */
  Widget fastContainer() {
    //opposite colour
    // (116, 255, 255)
    //(255, 139, 0, 0)
    //Text('Fast', style: TextStyle(color: Color.fromARGB(255, 139, 0, 0)),),
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 139, 0, 0),
        borderRadius:
            BorderRadius.circular(10.0), // Rounded corners with a radius of 10
      ),
      padding: EdgeInsets.all(
          8.0), // Adds spacing around the text within the container
      child: Text(
        'Fast',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0, // Adjust the font size as needed
        ),
      ),
    );
  }

  /**
   * widget slow container
   */
  Widget slowContainer() {
    //255,255,36,0-scarlet
    // (139, 0, 0)
    //(255, 116, 255, 255)
    //Text('Slow', style: TextStyle(color: Color.fromARGB(128, 116, 255, 255)),),

    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(128, 116, 255, 255),
        borderRadius:
            BorderRadius.circular(10.0), // Rounded corners with a radius of 10
      ),
      padding: EdgeInsets.all(
          8.0), // Adds spacing around the text within the container
      child: Text(
        'Slow',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0, // Adjust the font size as needed
        ),
      ),
    );
  }
}

Widget shareHiscoreContainer() {
  return InkWell(
    onTap: () {
      // Add your onPressed logic here
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Share highscore',
        //'Share above 1000 / next level',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class SoundButtonContainer extends StatefulWidget {
  @override
  _SoundButtonContainerState createState() => _SoundButtonContainerState();
}

class _SoundButtonContainerState extends State<SoundButtonContainer> {
  bool isMuted = true; // Initial state is muted

  void toggleSound() {
    setState(() {
      isMuted = !isMuted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleSound,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Icon(
          isMuted ? Icons.volume_off : Icons.volume_up,
          color: Colors.white,
        ),
      ),
    );
  }
}

class DifficultySlider extends StatefulWidget {
  @override
  _DifficultySliderState createState() => _DifficultySliderState();
}

class _DifficultySliderState extends State<DifficultySlider> {
  double difficulty = 50; // Initial difficulty value

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: difficulty,
      min: 0,
      max: 101,
      divisions: 3,
      label: difficulty.round().toString(),
      onChanged: (double value) {
        setState(() {
          difficulty = value;
        });
      },
    );
  }
}
