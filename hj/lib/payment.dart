// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hj/provider.dart';
import 'package:provider/provider.dart';
import 'package:hj/home.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
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
                          child: Text("  ${classInstancee.selected.length}  ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 15, 12, 12),
                                  fontWeight: FontWeight.w500)),

                          //  padding: EdgeInsets.only(bottom:5),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 245, 183, 234),
                            shape: BoxShape.circle,
                          )),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart_sharp),
                      color: Colors.black,
                      iconSize: 22,
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text("\$${classInstancee.price}",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  )
                ]);
              }))
            ],
            backgroundColor: Color.fromARGB(255, 209, 119, 191),
            elevation: 0,
            //  centerTitle: true,
            title: const Text(
              '     our candles',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 26, 24, 25),
                  fontWeight: FontWeight.bold),
            )),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                  height: 600,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: cartt.selected.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                              subtitle: Text("\$${cartt.selected[index].pr}"),
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(cartt.selected[index].img),
                              ),
                              title: Text(
                                "${cartt.selected[index].name}",
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  cartt.remove(cartt.selected[index]);
                                },
                                icon: Icon(Icons.remove),
                              )),
                        );
                      })),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 209, 119, 191)),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Pay \$${cartt.price}",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ));
  }
}
