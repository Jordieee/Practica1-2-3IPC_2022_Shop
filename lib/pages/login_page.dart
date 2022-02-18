import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          _Header(),
          const Spacer(flex: 1),
          _Body(),
          const Spacer(flex: 4),
        ]),
      ),
    );
  }

  SizedBox _Header() {
    return SizedBox(
        width: double.infinity,
        height: 125,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
        ]));
  }
}

Container _Body() {
  return Container(
      width: 325,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 10,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(flex: 5),
          Row(
            children: const [
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.indigo),
                    labelText: 'Username',
                  ),
                ),
              )
            ],
          ),
          const Spacer(flex: 1),
          Row(
            children: const [
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.keyboard_outlined, color: Colors.indigo),
                    labelText: 'Password',
                  ),
                ),
              )
            ],
          ),
          const Spacer(flex: 4),
        ],
      ));
}
