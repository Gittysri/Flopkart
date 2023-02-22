import 'package:flopkart/data.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 42, 41, 42),
      appBar: AppBar(
        title: Text(
          "Your cart",
          style: TextStyle(color: Colors.deepPurple, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: orderList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 180,
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 34, 255, 156),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  '${orderList[index]["Image"]}',
                  height: 180,
                  alignment: Alignment.centerLeft,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${orderList[index]["Delivered_on"]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "${orderList[index]["Name"]}",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                    Text(
                      "${orderList[index]["Cost"]}",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(width: 35),
                Text('${orderList[index]["Delivery_on"]}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              ],
            ),
          );
        },
      ),
    );
  }
}
