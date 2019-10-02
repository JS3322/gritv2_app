import 'package:gritv2/game/shooting/bullet.dart';
import 'package:gritv2/game/shooting/dragon.dart';

bool gameOver = false;
const DRAGONSPEED = 120.0;
const BULLETSPEED = 60.0;
const DRAGON_SIZE = 40.0;
const BULLET_SIZE = 20.0;

var points = 0;
Dragon dragon;
Bullet bullet;

var game;

bool bulletStartStop = false;

double touchPositionDx = 0.0;
double touchPositionDy = 0.0;