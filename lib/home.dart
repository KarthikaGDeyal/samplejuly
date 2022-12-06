import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(home:HomePage()));

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const Text("My Home List"),
    ),
      body: ListView(
        children:[
          Card(
            color: Colors.orange,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/k.jpg")),
                title: const Text("k"),
              trailing: Wrap(
              spacing: 30,
                children: const[Icon(Icons.message),Icon(Icons.phone)],
    ),
              onTap: () {
                Fluttertoast.showToast(
                  msg: "Hello",//message
                  toastLength: Toast.LENGTH_SHORT, // length
                  gravity: ToastGravity.BOTTOM, // location
                );
              }
              ),
          ),
            const ListTile(
              leading:Icon(Icons.search),
             title:Text("Search"),
            trailing:Icon(Icons.arrow_circle_right_outlined),
            ),
          const ListTile(
            leading:Icon(Icons.search),
            title:Text("Search"),
            trailing:Icon(Icons.arrow_circle_right_outlined),
          ),
          const ListTile(
            leading:Icon(Icons.search),
            title:Text("Search"),
            trailing:Icon(Icons.arrow_circle_right_outlined),
          ),
         ]
    ),
    ); 

  }
}