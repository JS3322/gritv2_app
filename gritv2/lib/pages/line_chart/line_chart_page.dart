import 'package:flutter/material.dart';

import 'samples/line_chart_sample1.dart';
import 'samples/line_chart_sample2.dart';

class LineChartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff262545),
      child: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 36.0, top: 24,),
              child: Text(
                "진단 개요",
                style: TextStyle(
                  color: Color(
                    0xff6f6f97,
                  ),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28,),
            child: LineChartSample1(),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28),
            child: LineChartSample2(),
          ),
        ],
      ),
    );
  }
}

class LineChartPaget extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
            backgroundColor: Colors.black12,
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
            floating: true,
            //lexibleSpace: Placeholder(),
            expandedHeight: 50,
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.teal[100 * (index % 9)],
          //         child: Text('Grid Item $index'),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //           padding: const EdgeInsets.only(left: 28, right: 28,),
          //           child: LineChartSample1(),
          //       );
          //     },
          //     childCount: 1,
          //   ),
          // ),
          Container(
            child: LineChartSample1(),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class LineChartPage1 extends StatelessWidget {
  String img1 =
      "https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&h=350";
  String img2 =
      "https://images.pexels.com/photos/262438/pexels-photo-262438.jpeg?auto=compress&cs=tinysrgb&h=350";
  String img3 =
      "https://images.pexels.com/photos/865002/pexels-photo-865002.jpeg?auto=compress&cs=tinysrgb&h=350";
  String img4 =
      "https://images.pexels.com/photos/39397/dart-target-aim-arrow-39397.jpeg?auto=compress&cs=tinysrgb&h=350";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        reverse: true,
        slivers: <Widget>[
          MyAppBar(
            imgUrl: img1,
          ),
          MyAppBar(
            imgUrl: img2,
          ),
          MyAppBar(
            imgUrl: img3,
          ),
          MyAppBar(
            imgUrl: img4,
          ),
          SliverFillRemaining(
            child: Container(),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final String imgUrl;
  const MyAppBar({
    Key key,
    this.imgUrl,
  }) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          imgUrl,
          fit: BoxFit.cover,
        ),
        title: const Text('그릿 회복프로그램입니다.'),
        centerTitle: true,
      ),
    );
  }
}