import 'package:flame/components.dart';

class spriteObject_test extends SpriteComponent with HasGameRef {
  spriteObject_test()
      : super(position: Vector2(300, 300), size: Vector2.all(200)) {
    debugMode = true;
  }

  String path = 'assets\flutter_snake219\default_snake_body.png';

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(path, srcSize: Vector2(200, 200));
  }

  @override
  void update(double dt) {
    super.update(dt);
    x + 0;
    y + 0;
  }
}
