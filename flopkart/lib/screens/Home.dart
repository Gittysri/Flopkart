import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';

import 'Order.dart';
import 'Product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 169, 83),

        // appBar: AppBar(
        //   title: Text("Home"),
        //   backgroundColor: Color.fromARGB(255, 59, 14, 57),
        // ),
        body: Container(
          padding: EdgeInsets.only(top: 180),
          child: Column(
            children: [
              Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_5ngs2ksb.json"),
              const Text(
                "FlopKart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'Schyler'),
              )
            ],
          ),
        ),
        // body: Padding(
        //   padding: const EdgeInsets.only(top: 130.0),
        //   child: Container(
        //       child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       const Text(
        //         "FlopKart",
        //         style: TextStyle(
        //             fontSize: 18,
        //             fontWeight: FontWeight.bold,
        //             color: Color.fromARGB(255, 18, 19, 18)),
        //       )
        //     ],
        //   )),
        // ),
        bottomNavigationBar: GNav(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 196, 191, 191),
          activeColor: Color.fromARGB(255, 192, 192, 192),
          gap: 8,
          tabs: [
            GButton(
                icon: Icons.shop_2,
                iconColor: Colors.white,
                iconSize: 35,
                text: "Products",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                }),
            GButton(
              icon: Icons.card_travel_outlined,
              iconSize: 35,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Order()));
              },
            )
          ],
        ));
  }
}
