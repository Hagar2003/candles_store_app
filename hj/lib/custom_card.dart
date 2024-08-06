import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hj/home2.dart';

class Custom_card  extends StatelessWidget {
  const Custom_card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 6/7,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return const Home2();
                })));
  }
}
