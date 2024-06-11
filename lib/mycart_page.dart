import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
import 'fruits.dart';
import 'grocery_item_tile.dart';
import 'main.dart';
class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BILL'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Consumer<cartmodel>(builder: (context,value,child){
        return  Column(
        children: <Widget>[
        Expanded(child:
    ListView.builder(
    itemCount: value.cartItems.length,
    itemBuilder: (context,index){
      return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
          decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
      title: Text(value.cartItems[index][0]),
      )
          ));
    }
    )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text('TOTAL PRICE= \$${value.calculateTotal()}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          ),
        )

        ]

        );


    }
      ));
  }
}

