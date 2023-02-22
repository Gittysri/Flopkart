import 'package:flopkart/data.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 225,
                  color: Color.fromARGB(255, 116, 80, 177),
                  child: Row(
                    children: [
                      Image.asset(
                        '${productList[index]["Image"]}',
                        height: 150,
                      ),
                      const SizedBox(width: 20),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : " "${productList[index]["Name"]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Ratings : " "${productList[index]["Ratings"]}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Price : " "${productList[index]["cost"]}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.deepOrange[400],
                                      fontSize: 15),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add Cart",
                                    style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontSize: 15),
                                  ))
                            ]),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
