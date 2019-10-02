import 'package:flutter/material.dart';
import 'package:gritv2/common/app_background.dart';
import 'package:gritv2/common/horizontal_tab_layout.dart';
import 'package:gritv2/button_app/button.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: 
          InkWell(
            child: Image.asset('assets/images/button_grit.png', width: 40, height: 40),
            onLongPress: () {
              Navigator.pushNamed(context, '/');
            },
            onTap: () {
              Navigator.pushNamed(context, '/init');
            },
          ),
        title: Text('당신은 탄력초보형 입니다'),
        backgroundColor: Colors.white10,
        actions: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                shape: StadiumBorder(),
                child: Text("코스"),

                color: Colors.white70,
                onPressed: () {
                  Navigator.pushNamed(context, '/onoff');
                },
              ),
            ],
          ),
          // PopupMenuButton<Choice>(
            
          //   itemBuilder: (
          //     return choices.skip(2).map((Choice choice) {
          //       return PopupMenuItem<Choice>(
          //         value: choice,
          //         child: Text(choice.title),
          //       );
          //     }).toList();
          //   ),
          // )
        ],
      ),
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 22.0,
      //     color: Colors.purple,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/init');
        },
        label: Text('뒤로가기'),
        icon : Icon(Icons.turned_in),
        backgroundColor: Colors.lightGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

// class Choice {
//   const Choice ({this.title, this.icon});

//   final String title;
//   final IconData icon;
// }

// const List<Choice> choice = const <Choice>[
//   const Choice(title: '기타1', icon: Icons.directions_car),
//   const Choice(title: '기타2', icon: Icons.directions_car),
//   const Choice(title: '기타3', icon: Icons.directions_car),
//   const Choice(title: '기타4', icon: Icons.directions_car),
//   const Choice(title: '기타5', icon: Icons.directions_car),
// ];


class LandingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: 
          InkWell(
            child: Image.asset('assets/images/button_grit.png', width: 40, height: 40),
            onLongPress: () {
              Navigator.pushNamed(context, '/');
            },
            onTap: () {
              Navigator.pushNamed(context, '/init');
            },
          ),
        title: Text('당신은 탄력초보형 입니다'),
        backgroundColor: Colors.white10,
        actions: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("코스"),
            color: Colors.white70,
            onPressed: () {
              Navigator.pushNamed(context, '/init');
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonList2(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/init'),
        tooltip: '뒤로가기',
        child: Icon(Icons.backspace),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
