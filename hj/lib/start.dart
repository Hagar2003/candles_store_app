import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hj/main3.dart';
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/l4.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body:Column(children: [SizedBox(height: 340,),SizedBox(
  width: 360.0,
  child: DefaultTextStyle(
    style: const TextStyle(color:Color.fromARGB(255, 246, 84, 84),
      fontSize: 49.0,
      fontWeight: FontWeight.bold,
    ),
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          FadeAnimatedText('   Candles',),
          FadeAnimatedText('Candles Shop'),
          
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  ),),
        SizedBox(height: 110,),
             ElevatedButton(
              onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Main3(),
                          ));},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 246, 84, 84)),
                padding: MaterialStateProperty.all(EdgeInsets.all(13)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "      Start      ",
                style: TextStyle(fontSize: 19,color: Colors.white),
              ),
            ),
    ]))],
              );
            
    
      
    
  }
}
