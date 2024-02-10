// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App());
}

// widget을 만든다 == class를 만든다.
// widget을 위해선 flutter SDK core widget 3가지중 하나를 상속받아야 한다.
// StatelessWidget을 사용하기 위해선 build 메소드가 필요.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
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
                    height: 50,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  Transform.translate(
                    offset: Offset(0, -20),
                    child: CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '9 785',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -40),
                    child: CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '2 192',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                    ),
                  ),
                ],
              ),
            ),
          )),
      // Widget은 Scaffold를 가져야 함.
    );
    // Material : google / Cupertino : ios
    // flutter는 google이 만들었기 때문에 Material이 더 효율적임(?)
  }
}
