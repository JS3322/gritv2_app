import 'package:flutter/material.dart';

//import 'bar_chart/bar_chart_page.dart';
//import 'bar_chart/bar_chart_page2.dart';
import 'line_chart/line_chart_page.dart';
import 'line_chart/line_chart_page2.dart';
//import 'line_chart/line_chart_page3.dart';
import 'pie_chart/pie_chart_page.dart';
import 'first.dart';


class Chartpage extends StatefulWidget {
  Chartpage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Chartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            LineChartPage(),
            //LineChartPaget(),
            LineChartPage1(),
            //BarChartPage(),
            //BarChartPage2(),
            //PieChartPage(),
            //LineChartPage2(),
            FirstPage(),
            //LineChartPage3(),
          ],
        ),
      ),
    );
  }
}

// class Chartpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FlChart Demo', 
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Color(0xff262545),
//         primaryColorDark: Color(0xff201f39),
//         brightness: Brightness.dark,
//       ),
//       home: MyHomePage(title: 'fl_chart'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: PageView(
//           children: <Widget>[
//             LineChartPage(),
//             BarChartPage(),
//             BarChartPage2(),
//             PieChartPage(),
//             LineChartPage2(),
//             LineChartPage3(),
//           ],
//         ),
//       ),
//     );
//   }
// }




///////



// class Chartpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Chart Page"),
//       ),
//       body: CustomPaint(
//         size: Size(200, 200), // 위젯의 크기를 정함.
//         painter: MyPainter(),
//       ),      
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint() // Paint 클래스는 어떤 식으로 화면을 그릴지 정할 때 쓰임.
//       ..color = Colors.deepPurpleAccent // 색은 보라색
//       ..strokeCap = StrokeCap.round // 선의 끝은 둥글게 함.
//       ..strokeWidth = 4.0; // 선의 굵기는 4.0

//       Offset p1 = Offset(0.0, 0.0); // 선을 그리기 위한 좌표값을 만듬.
//       Offset p2 = Offset(size.width, size.height);

//       canvas.drawLine(p1, p2, paint); // 선을 그림.
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

