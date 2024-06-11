import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';
import 'fruits.dart';
import 'grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => fruits())),
              icon: Icon(Icons.arrow_forward_ios)),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'vegetables',
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
              "Let's pick fresh vegetables for you",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Consumer<cartmodel>(builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopVegetables.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return groceryitemtile(
                      itemName: value.shopVegetables[index][0],
                      itemPrice: value.shopVegetables[index][1],
                      onPressed: () =>
                          Provider.of<cartmodel>(context, listen: false)
                              .addcartItems(index),
                    );
                  });
            }),
          ),
        ],
      )),
    );
  }
}
