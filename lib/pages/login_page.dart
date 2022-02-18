import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
              width: double.infinity,
              height: 125,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(flex: 2),
                    const Text("Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    const Spacer(flex: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            spreadRadius: 5,
                            blurRadius: 70,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 1),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            spreadRadius: 5,
                            blurRadius: 100,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 3),
                  ])),
        ]),
      ),
    );
  }
}
