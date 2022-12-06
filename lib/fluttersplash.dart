import 'package:flutter/material.dart';

void main() {
  runApp(MySplash());
}

class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/meadow.jpg"),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage("assets/images/sunrise.png"),
                  width: 200,
                  height: 200,
                ),
                Text(
                  "Splash Screen",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




