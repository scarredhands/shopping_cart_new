import 'package:flutter/material.dart';
import 'mycart_page.dart';
import 'package:provider/provider.dart';
class groceryitemtile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  void Function()? onPressed;
  groceryitemtile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(itemName,
            style: TextStyle(
              fontSize: 16
            ),),
            MaterialButton(
                onPressed: onPressed,
              color: Colors.black,
              child: Text(
                '\$ '+ '$itemPrice',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
