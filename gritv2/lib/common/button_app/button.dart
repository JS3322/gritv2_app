import 'package:flutter/material.dart';

class ButtonList2 extends StatelessWidget {
@override
Widget build(BuildContext context) => Container(
  decoration: 
    BoxDecoration(
      border: Border.all(width: 5, color: Colors.white),
      borderRadius: const BorderRadius.all(const Radius.circular(8))
    ),
  height: 100,
  width: 200,  
  child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              child: Image.asset('assets/images/button_card.ico', width: 40, height: 40),
              onTap: () {
                Navigator.pushNamed(context, '/cardselect');
              },
            ),
            InkWell(
              child: Image.asset('assets/images/button_game.png', width: 40, height: 40),
              onTap: () {
                Navigator.pushNamed(context, '/onoff');
              },
            ),
            InkWell(
              child: Image.asset('assets/images/button_time.ico', width: 40, height: 40),
              onTap: () {
                Navigator.pushNamed(context, '/init');
              },
            ),
          ],
          
        )
  );
}

class ButtonList extends StatelessWidget {
@override
Widget build(BuildContext context) => Container(
  decoration: 
    BoxDecoration(
      border: Border.all(width: 5, color: Colors.white),
      borderRadius: const BorderRadius.all(const Radius.circular(8))
    ),
  height: 50,
  width: 200,  
  child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              child: Image.asset('assets/images/button_card.ico', width: 40, height: 40),
              onTap: () {
                Navigator.pushNamed(context, '/cardselect');
              },
            ),
            InkWell(
              child: Image.asset('assets/images/button_game.png', width: 40, height: 40),
              onTap: () {
                Navigator.pushNamed(context, '/onoff');
              },
            ),
            IconButton(
              icon: Icon(Icons.backspace),
              onPressed: () {
                Navigator.pushNamed(context, '/cardselect');
              },
            ),
          ],   
        )
  );
}

class ButtonListPadding extends StatelessWidget {
@override
Widget build(BuildContext context) => Container(
  decoration: 
    BoxDecoration(
      border: Border.all(width: 5, color: Colors.white),
      borderRadius: const BorderRadius.all(const Radius.circular(8))
    ),
  height: 10,
  );
}


// class ButtonList extends StatelessWidget {
// BuildContext ctx;
// @override
//     Widget build(BuildContext context) {
//         ctx = context;
//         return Center(
//             child: Column(
//                 children: <Widget>[
//                     RaisedButton(
//                         child: Text('RaisedButton', style: TextStyle(fontSize: 24)),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/cardselect');
//                         },
//                     ),
//                     FlatButton(
//                         child: Text('FlatButton', style: TextStyle(fontSize: 24)),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/cardselect');
//                         },
//                         color: Colors.green,
//                         textColor: Colors.white,
//                     ),
//                     IconButton(
//                         icon: Icon(Icons.print),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/cardselect');
//                         },
//                     ),
//                     FloatingActionButton(
//                         child: Icon(Icons.add),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/cardselect');
//                         },
//                     ),
//                 ],
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             ),
//         );
// }
// }