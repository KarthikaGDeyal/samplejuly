import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/apple.jpg",
    "assets/images/grapes.jpg",
    "assets/images/orange.jpg",
    "assets/images/apple.jpg",
    "assets/images/grapes.jpg",
    "assets/images/orange.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index){
            return Image.asset(images[index], fit: BoxFit.cover,);
          },
            childCount: 6,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        )
    );
  }

}