import 'package:flutter/material.dart';

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('두번째 컨텐츠'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('메인 메뉴'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/');
//             // pop 해서 돌아가기
//             // Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: CustomPaint(
        size: Size(200, 200), // 위젯의 크기를 정함.
        painter: MyPainter(),
      ),
      
      
           
         
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint() // Paint 클래스는 어떤 식으로 화면을 그릴지 정할 때 쓰임.
      ..color = Colors.deepPurpleAccent // 색은 보라색
      ..strokeCap = StrokeCap.round // 선의 끝은 둥글게 함.
      ..strokeWidth = 4.0; // 선의 굵기는 4.0

      Offset p1 = Offset(0.0, 0.0); // 선을 그리기 위한 좌표값을 만듬.
      Offset p2 = Offset(size.width, size.height);

      canvas.drawLine(p1, p2, paint); // 선을 그림.
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}