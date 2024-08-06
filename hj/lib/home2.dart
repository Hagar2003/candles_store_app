import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      home:Scaffold(appBar: AppBar(elevation: 0,),
        body:Center(
          child: Stack(clipBehavior: Clip.none,
                children: [//SizedBox(height: 200,),
                   Container(height:200,width:200,decoration: BoxDecoration(boxShadow:
                   [BoxShadow(blurRadius: 50,color:Colors.grey.withOpacity(.2),
                    offset: const Offset(10, 10))]),
                     child: 
                      const Card.filled( elevation: 10,color: Colors.white,
                        child:Padding(padding:EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                            children:[ Text('gsgnhebtgrg',style:TextStyle(color:Colors.grey)),
                          Row(children:[Text('gsggrg           ',style:TextStyle(color:Colors.grey,)),
                          Icon(Icons.favorite,color: Color.fromARGB(255, 231, 65, 81)),])
                          ]),
                        )
                      ),),
                        
                        Positioned(bottom:95,left:45,child: Image.asset("images/l99.jpg",width:100,height: 100,)),])
                
              ),
        ),
          
          
        )
      
    ;
  }
}