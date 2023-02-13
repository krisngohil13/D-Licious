import 'package:flutter/material.dart';
import 'package:food_delivery/pizza_order_details.dart';

class MainPizzaOrderApp extends StatelessWidget {
  const MainPizzaOrderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(data: ThemeData.light(), child: PizzaOrderDetails());
  }
}
