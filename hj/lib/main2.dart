
import 'package:flutter/material.dart';
import 'package:hj/main3.dart';
import 'package:hj/main4.dart';

void main() {
  runApp(const Main2());
}

class Main2 extends StatelessWidget {
  const Main2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: Scaffold(
  appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,
            title: const Text("             OurApp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ))),
            drawer: Drawer(),
            body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    Text('Sign in or register?',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30),
                    Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Main3()));
                          },
                          height: 40,
                          minWidth: 400,
                          child: const Text('Sign in',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                        )),
                    const SizedBox(height: 50),
                    Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Main4()));
                          },
                          height: 40,
                          minWidth: 400,
                          child: const Text('Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                        ),)
                          ,


                        
                  ],
                ))));
  }
}
