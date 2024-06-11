import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';
import 'grocery_item_tile.dart';
import 'mycart_page.dart';

class fruits extends StatelessWidget {
  const fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cartPage())),
              icon: Icon(Icons.arrow_forward_ios)),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'fruits',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 48),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Let's pick fresh fruits for you",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Consumer<cartmodel>(builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopFruits.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return groceryitemtile(
                      itemName: value.shopFruits[index][0],
                      itemPrice: value.shopFruits[index][1],
                      onPressed: () =>
                          Provider.of<cartmodel>(context, listen: false)
                              .addfruits(index),
                    );
                  });
            }),
          ),
        ],
      )),
    );
  }
}
