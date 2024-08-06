import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hj/main4.dart';
import 'package:hj/main5.dart';

class Main3 extends StatefulWidget {
  const Main3({super.key});

  @override
  State<Main3> createState() => _RegisState();
}

class _RegisState extends State<Main3> {
  bool pass = true;
  Icon ic = Icon(Icons.remove_red_eye_outlined);
  late String email;
  late String password;
  final a = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 246, 84, 84),
            elevation: 0.0,
            title: const Text("             Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ))),
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              const Text('Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255, 246, 84, 84),
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              // TextField(
              //   onChanged: (value) {},
              //   decoration: InputDecoration(
              //       hintText: 'Enter your name',
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10)),
              //       focusedBorder: const OutlineInputBorder(
              //           borderSide: BorderSide(color: Colors.blue))),
              // ),
              // const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: 'Enter your mail',
                    suffixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 246, 84, 84),))),
              ),
              const SizedBox(height: 20),
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
                        icon: Icon(
                            pass ? Icons.visibility : Icons.visibility_off)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color:Color.fromARGB(255, 246, 84, 84),))),
              ),
              const SizedBox(height: 20),
              Material(
                  color: Color.fromARGB(255, 246, 84, 84),
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                      onPressed: () async {
                        try {
                          var x = await a.createUserWithEmailAndPassword(
                              email: email, password: password);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Main5()));
                        } catch (e) {
                          print(e);
                        }
                      },
                      height: 40,
                      minWidth: 100,
                      child: const Text('sign in',
                          style:
                              TextStyle(color: Colors.white, fontSize: 25)))),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do not have an account?",style: TextStyle(color:Colors.black ,fontSize: 18),),
                  TextButton(onPressed: (){
                        Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context)=>const Main4()));
                  },
                   child: Text("sign up",style: TextStyle(color:Color.fromARGB(255, 246, 84, 84),fontSize: 20)))],
              )
          
            ])
            ));
  }
}
