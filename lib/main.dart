import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// widget을 만든다 == class를 만든다.
// widget을 위해선 flutter SDK core widget 3가지중 하나를 상속받아야 한다.
// StatelessWidget을 사용하기 위해선 build 메소드가 필요.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
      // Widget은 Scaffold를 가져야 함.
    );
    // Material : google / Cupertino : ios
    // flutter는 google이 만들었기 때문에 Material이 더 효율적임(?)
  }
}
