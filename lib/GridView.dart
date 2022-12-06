import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home:GridView()));
}

class GridView extends StatelessWidget {
  const GridView({Key? key}) : super(key: key);


// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child: Text(
              'Flutter GridView Demo',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/F.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }

  static count({required int crossAxisCount, required double crossAxisSpacing, required double mainAxisSpacing, required bool shrinkWrap, required List<Padding> children}) {}
}

  