import 'package:flutter/material.dart';
import 'package:food_delivery/pizza_order_bloc.dart';

class PizzaOrderProvider extends InheritedWidget {
  final PizzaOrderBloc bloc;
  final Widget child;

  // Use 'required' for non-nullable parameters
  PizzaOrderProvider({required this.bloc, required this.child}) : super(child: child);

  // Ensure 'bloc' is not null before accessing
  static PizzaOrderBloc of(BuildContext context) => context.findAncestorWidgetOfExactType<PizzaOrderProvider>()!.bloc;


  @override
  bool updateShouldNotify(covariant PizzaOrderProvider oldWidget) => true;
}
