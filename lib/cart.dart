import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        "La-Pinoz-Pizza",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Text('Cart Is Empty',
            style: TextStyle(color: Colors.grey,
                fontSize: 15),
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
