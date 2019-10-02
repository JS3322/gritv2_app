import 'package:flame/flame.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:gritv2/game/shooting/galaxy.dart';
import 'package:gritv2/game/shooting/dataset.dart';

class Loadinggame extends StatefulWidget {

  createState() async {
    Flame.audio.disableLog();
    Flame.images.loadAll(['fire.png', 'dragon.png', 'gun.png', 'bullet.png']);

  var dimensions = await Flame.util.initialDimensions();

  game = new Galaxy(dimensions);
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: GameWrapper(game),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/cardselect');
      //   },
      //   label: Text('뒤로가기'),
      //   icon : Icon(Icons.turned_in),
      //   backgroundColor: Colors.lightGreen,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    )
  )
  );

  HorizontalDragGestureRecognizer horizontalDragGestureRecognizer =
      new HorizontalDragGestureRecognizer();

  Flame.util.addGestureRecognizer(horizontalDragGestureRecognizer
    ..onUpdate = (startDetails) => game.dragInput(startDetails.globalPosition));

  Flame.util.addGestureRecognizer(new TapGestureRecognizer()
    ..onTapDown = (TapDownDetails evt) => game.tapInput(evt.globalPosition));

  // Adds onUP feature to fire bullets
  Flame.util.addGestureRecognizer(new TapGestureRecognizer()
    ..onTapUp = (TapUpDetails evt) => game.onUp(evt.globalPosition));
    
  }

}


class GameWrapper extends StatelessWidget {
  final Galaxy game;
  GameWrapper(this.game);

  @override
  Widget build(BuildContext context) {
    return game.widget;
  }
}



loadinggame() async {
  Flame.audio.disableLog();
  Flame.images.loadAll(['fire.png', 'dragon.png', 'gun.png', 'bullet.png']);

  var dimensions = await Flame.util.initialDimensions();

  game = new Galaxy(dimensions);
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("assets/images/background.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: GameWrapper(game),
  ))));

  HorizontalDragGestureRecognizer horizontalDragGestureRecognizer =
      new HorizontalDragGestureRecognizer();

  Flame.util.addGestureRecognizer(horizontalDragGestureRecognizer
    ..onUpdate = (startDetails) => game.dragInput(startDetails.globalPosition));

  Flame.util.addGestureRecognizer(new TapGestureRecognizer()
    ..onTapDown = (TapDownDetails evt) => game.tapInput(evt.globalPosition));

  // Adds onUP feature to fire bullets
  Flame.util.addGestureRecognizer(new TapGestureRecognizer()
    ..onTapUp = (TapUpDetails evt) => game.onUp(evt.globalPosition));
}
