import 'package:flutter/material.dart';
import 'package:hj/details.dart';
import 'package:hj/payment.dart';
import 'package:hj/provider.dart';
import 'package:hj/start.dart';
import 'package:provider/provider.dart';

//import 'package:google_fonts/google_fonts.dart';
class Can {
  String img;
  double pr;
  String name;
  Can({required this.img, required this.pr,required this.name});
}

class Home extends StatelessWidget {
  final List<Can> x = [
    Can(img: "images/l5.jpg", pr: 125, name: "Violett"),
    Can(img: "images/l4.jpg", pr: 122.5 ,name: "BabyRose"),
    Can(img: "images/l10.jpg", pr: 75,name: "BiscoBear"),
    Can(img: "images/l6.jpg", pr: 60,name: "BabyblueCloud"),
    Can(img: "images/l7.jpg", pr: 95,name: "CloudRose"),
    Can(img: "images/l8.jpg", pr: 120,name: "CoffeLover"),
    Can(img: "images/l2.jpg", pr: 12,name: "cutyViolet"),
    Can(img: "images/l77.jpg", pr: 15,name: "CutyDuck"),
    Can(img: "images/l7.jpg", pr: 15,name: "CloudRose"),
    Can(img: "images/l88.jpg", pr: 30,name: "chocaBear"),
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(surfaceTintColor: Colors.white,   child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height:100),
                  ListTile(
                      title: const Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      leading: const Icon(Icons.home,size: 30,),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                      }),
                  ListTile(
                      title: const Text("My products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      leading: const Icon(Icons.add_shopping_cart,size: 30,),
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Payment(),
                      ),
                    );
                      }),
                  ListTile(
                      title: const Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      leading: const Icon(Icons.help_center,size: 30,),
                      onTap: () {}),
                  ListTile(
                      title: const Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      leading: const Icon(Icons.exit_to_app,size: 30,),
                      onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Start(),
                              ));}),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(bottom: 12),
              //   child: Text("Developed by Hagar Adel © 2024",
              //       style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
              // )
            ],
          ),
        ),
      appBar: AppBar(
          actions: [
            Consumer<Cart>(builder: ((context, classInstancee, child) {
              return Row(children: [
                Stack(children: [
                  Positioned(
                    //bottom:6,
                    top: -2,
                    right: 24,
                    child: Container(
                        //color:Colors.amber,
                        height: 20,
                        width: 30,

                        //  padding: EdgeInsets.only(bottom:5),
                        decoration: const BoxDecoration(
                        //  color: Color.fromARGB(255, 245, 183, 234),
                          shape: BoxShape.circle,
                        ),
                        child: Text("  ${classInstancee.selected.length}  ",
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500))),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Payment(),
                          ));
                    },
                    icon: const Icon(Icons.add_shopping_cart_sharp),
                    color: Colors.black,
                    iconSize: 22,
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("\$${classInstancee.price}",
                      style: const TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                )
              ]);
            }))
          ],
          backgroundColor:const Color.fromARGB(255, 209, 119, 191),
          elevation: 0,
          //  centerTitle: true,
          title: const Text(
            '     our candles',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 3,
              mainAxisSpacing: 30),
          itemCount: x.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: x[index]),
                      ));
                },
                child: GridTile(
                  footer: GridTileBar(
                    // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    // ignore: non_constant_identifier_names
                    trailing: Consumer<Cart>(builder: ((context, Cartt, child) {
                      return IconButton(
                        color: const Color.fromARGB(255, 17, 17, 17),
                        onPressed: () {
                          Cartt.Add(x[index]);
                        },
                        icon: const Icon(Icons.add),
                        iconSize: 30,
                      );
                    })),

                    leading: Text(
                      "\$ ${x[index].pr}",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 16, 16, 16),
                      ),
                    ),

                    title: const Text(
                      "          ",
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      top: -6,
                      bottom: -9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(x[index].img, width: 450),
                      ),
                    ),
                  ]),
                ));
          }),
    );
  }
}
