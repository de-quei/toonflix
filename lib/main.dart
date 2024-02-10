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
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
      // Widget은 Scaffold를 가져야 함.
    );
    // Material : google / Cupertino : ios
    // flutter는 google이 만들었기 때문에 Material이 더 효율적임(?)
  }
}
