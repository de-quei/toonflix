// ignore_for_file: prefer_const_constructors

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
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // 자식 요소를 위아래로 배치하고 싶을 땐 Column
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  // 자식 요소를 옆에 놓고 싶을 땐 Row
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
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                const Text('Total Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text('\$5 194 482',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
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
