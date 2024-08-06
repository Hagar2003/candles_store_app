import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hj/custom_card.dart';
import 'package:hj/details.dart';
import 'package:hj/firebase_options.dart';
import 'package:hj/home.dart';
import 'package:hj/home2.dart';
import 'package:hj/main2.dart';
import 'package:hj/main3.dart';
import 'package:hj/main4.dart';
import 'package:hj/main5.dart';
import 'package:hj/payment.dart';
import 'package:hj/provider.dart';
import 'package:hj/start.dart';
import 'package:provider/provider.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider( create: (context) {return Cart();},
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: 
          // routes:{
          //   'main2':(context)=>   const Main2(),
          //   //'main3':(context)=>  Main3(),
          // }
          home:Start(),
          ),
    );
  }
}
