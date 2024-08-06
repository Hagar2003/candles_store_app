import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hj/home.dart';
import 'package:hj/main3.dart';
import 'package:hj/main5.dart';

class Main4 extends StatefulWidget {
  const Main4({super.key});

  @override
  State<Main4> createState() => _RegisState();
}

class _RegisState extends State<Main4> {
  bool pass = true;
  final a = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor:Color.fromARGB(255, 246, 84, 84),
            elevation: 0.0,
            title: const Text("             register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ))),
        body: Padding(
            padding: const EdgeInsets.all(40),
            child: Form(
                child: Column(children: [
              //  const SizedBox(height: 20),
              const Text('Register',
                  style: TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255, 246, 84, 84),
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: 'Enter your mail',
                    suffixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 246, 84, 84)))),
              ),
              const SizedBox(height: 30),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: pass,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 246, 84, 84),))),
              ),
              const SizedBox(height: 20),
              Material(
                  color:Color.fromARGB(255, 246, 84, 84),
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                      onPressed: () async {
                        try {
                          var x = await a.signInWithEmailAndPassword(
                              email: email, password: password);
                        } catch (e) {
                          print(e);
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      height: 40,
                      minWidth: 100,
                      child: const Text('register',
                          style:
                              TextStyle(color: Colors.white, fontSize: 25)))),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Main3()));
                      },
                      child: Text("sign in",
                          style: TextStyle(color:Color.fromARGB(255, 246, 84, 84), fontSize: 20)))
                ],
              )
            ]))));
  }
}
