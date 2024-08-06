import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hj/main2.dart';

void main() {
  runApp(const Main5());
}

class Main5 extends StatelessWidget {
  const Main5({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar( backgroundColor: Colors.blue,),
      drawer: Drawer(child:ListView(children:[ListTile(title:const Text('log out'),
      onTap: ()async{await FirebaseAuth.instance.signOut();},)])),
            body: Center(
              child:Column( children :[  SizedBox(height:190),
                Text(" good job",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
                  SizedBox(height:30),
                  Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                      onPressed: ()  {
              
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Main2()));
                      
                      },
                      height: 40,
                      minWidth: 200,
                      child: const Text('End',
                          style:
                              TextStyle(color: Colors.white, fontSize: 25))))])
            )));
  }
}
