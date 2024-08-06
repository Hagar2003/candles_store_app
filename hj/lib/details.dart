
import 'package:flutter/material.dart';
import 'package:hj/home.dart';
import 'package:hj/payment.dart';
import 'package:hj/provider.dart';
import 'package:hj/start.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  Can product;
  Details({super.key, required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool tr = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                              color: Color.fromARGB(255, 245, 183, 234),
                              shape: BoxShape.circle,
                            ),
                            child: Text("  ${classInstancee.selected.length}  ",
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 15, 12, 12),
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
              backgroundColor: const Color.fromARGB(255, 209, 119, 191),
              elevation: 0,
              centerTitle: true,
              title: const Text(
                'Candle Details',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 26, 24, 25),
                    fontWeight: FontWeight.bold),
              )),
          drawer: Drawer(
            surfaceTintColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 100),
                    ListTile(
                        title: const Text("Home",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        leading: const Icon(
                          Icons.home,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        }),
                    ListTile(
                        title: const Text(
                          "My products",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        leading: const Icon(
                          Icons.add_shopping_cart,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Payment(),
                            ),
                          );
                        }),
                    ListTile(
                        title: const Text("About us",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        leading: const Icon(
                          Icons.help_center,
                          size: 30,
                        ),
                        onTap: () {}),
                    ListTile(
                        title: const Text("Logout",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        leading: const Icon(
                          Icons.exit_to_app,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Start(),
                              ));
                        }),
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
          body: SingleChildScrollView(
              child: Column(children: [
            Container(
                height: 400,
                width: 700,
                child: Image.asset(widget.product.img)),
            const SizedBox(height: 10),
            Text(
              "\$ ${widget.product.pr}",
              style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                SizedBox(width: 60),
                Icon(Icons.edit_location, size: 30),
                Text(
                  'Candles shop',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 15),
            const SizedBox(
              width: double.infinity,
              child: Text('  Item details :',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'derveg ergwregqwer5er dg rw gw g erg erwg wer gwer g wer g reg er g reg re reg er gre gre ge  usygkgba hut ehwbke at eer tert ew4t et ertger nlfsdighkladugyusgerfuhgaogjflsdgaygryfuyrdlfjbadjbdfhdw rg  fghr wry wrty wrt wty erytwr yt ret e5yt g rg wth thre eth rwehshy eryherearwer gewr ger g g r rg rg  t ertyert erty wyt wet wert wet wert werg erter ',
              style: const TextStyle(
                fontSize: 19,
              ),
              maxLines: tr ? 4 : 7,
              overflow: TextOverflow.ellipsis,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    tr = !tr;
                  });
                },
                child: Text(
                  tr ? 'show more' : 'show less',
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                ))
          ]))),
    );
  }
}
