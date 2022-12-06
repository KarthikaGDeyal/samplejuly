import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  // ignore: prefer_const_constructors
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text("Register Form",
                style: TextStyle(fontSize: 30, color: Colors.black)),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              //color: Colors.blueAccent,
              child: const Text("REGISTER"),
            ),
          ),
        ],
      ),
    );
  }
}
