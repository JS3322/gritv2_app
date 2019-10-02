import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:gritv2/pages/login/delayed_animation.dart';

//import 'package:video_game_message_board_app/model/forum.dart';
//import 'package:video_game_message_board_app/styleguide/text_styles.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized ();
//   SystemChrome.setEnabledSystemUIOverlays([]);
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white54,
          body: Center(
            child: Column(
              children: <Widget>[
                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white24,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Image.asset('assets/images/button_grit.png'),
                        //child: Text("GRIT"),
                        radius: 50.0,
                      )),
                ),
                DelayedAimation(
                  child: Text(
                    "안녕하세요.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: color),
                  ),
                  delay: delayedAmount + 1000,
                ),
                DelayedAimation(
                  child: Text(
                    "지알아이티입니다.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: color),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAimation(
                  child: Text(
                    "G-TOX",
                    style: TextStyle(fontSize: 20.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                DelayedAimation(
                  child: Text(
                    "당신의 회복탄력성을 높힙니다.",
                    style: TextStyle(fontSize: 20.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                SizedBox(
                  height: 100.0,
                ),
                DelayedAimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    //child: _animatedButtonUI,
                    child: _testing,
                  ),
                ),
                delay: delayedAmount + 4000,
              ),
              SizedBox(height: 50.0,),
                DelayedAimation(
                  child: Text(
                    "본 앱은 임상결과목적으로 사용합니다. \n앱을 사용하는 동안 데이터를 수집하지 않습니다.".toUpperCase(),
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  delay: delayedAmount + 5000,
                ),
              ],
            ),
          )
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
          //     SizedBox(
          //       height: 20.0,
          //     ),
          //      Center(

          //   ),
          //   ],

          // ),
          ),
    );
  }

  Widget get _testing => Container(
     height: 100,
        width: 200,
        child: Column(
          children: <Widget>[
            RaisedButton(
                  shape: StadiumBorder(),
                  child: Text("접속합니다", style: TextStyle(fontSize: 20),),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.pushNamed(context, '/init');
                  },
            ),
          ],
          )
  );

   

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
