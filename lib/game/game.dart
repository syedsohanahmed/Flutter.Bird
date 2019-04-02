import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flutter_bird/game/bird.dart';
import 'package:flutter_bird/game/horizont.dart';

class FlutterBirdGame extends BaseGame {
  Size screenSize;
  Horizon horizon;
  Bird bird;

  FlutterBirdGame({Image spriteImage, Size screenSize}) {
    horizon = Horizon(spriteImage, screenSize);
    bird = Bird(spriteImage);
    bird.setPosition(150, 350);
    this..add(horizon)..add(bird);
  }

  @override
  void update(double t) {
    bird.update(t);
  }

  void onTap() {
    bird.jump();
  }
}
