import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  VoidCallback removeFromCart;
  VoidCallback addToCart;
  int itemCount;

  CartWidget({super.key, required this.removeFromCart, required this.addToCart, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: removeFromCart,
          tooltip: 'Remove',
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
                '$itemCount',
                style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                )
            )
        ),
        FloatingActionButton(
          onPressed: addToCart,
          tooltip: 'Add',
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}