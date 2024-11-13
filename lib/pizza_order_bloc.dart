import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/ingredient.dart';

class PizzaMetaData {
  const PizzaMetaData({
    required this.imageBytes,
    required this.position,
    required this.size,
  });

  final Uint8List imageBytes;
  final Offset position;
  final Size size;

  static PizzaMetaData defaultInstance() {
    return PizzaMetaData(
      imageBytes: Uint8List(0),
      position: Offset.zero,
      size: Size.zero,
    );// test
  }
}

enum PizzaSizeValue {
  s,
  m,
  l,
}
class PizzaSizeState {
  PizzaSizeState(this.value) : factor = _getFactorBySize(value);
  final PizzaSizeValue value;
  final double factor;

  static double _getFactorBySize(PizzaSizeValue value) {
    switch(value){
      case PizzaSizeValue.s:
        return 0.75;
      case PizzaSizeValue.m:
        return 0.85;
      case PizzaSizeValue.l:
        return 1.0;
      default:
        return 0.0;
    }
  }
}

const initialTotal = 15;


class PizzaOrderBloc extends ChangeNotifier{
  final listIngredients = <Ingredient>[];
  final notifierTotal = ValueNotifier(initialTotal);
  final notifierDeleteIngredient = ValueNotifier<Ingredient?>(null);
  final notifierFocused = ValueNotifier(false);
  final notifierPizzaSize = ValueNotifier<PizzaSizeState>(PizzaSizeState(PizzaSizeValue.m));
  final notifierPizzaBoxAnimation = ValueNotifier(false);
  final notifierImagePizza = ValueNotifier<PizzaMetaData?>(null);
  final notiferCartIconAnimation = ValueNotifier(0);



  void addIngredient(Ingredient ingredient){
    listIngredients.add(ingredient);
    notifierTotal.value++;
  }

  void refreshDeletedIngredient(){
    notifierDeleteIngredient.value = null;
  }

  void removeIngredient(Ingredient ingredient){
    listIngredients.remove(ingredient);
    notifierTotal.value--;
    notifierDeleteIngredient.value = ingredient;
  }

  bool containsIngredient(Ingredient ingredient) {
    for (Ingredient i in listIngredients) { // Changed 'ingredients' to 'listIngredients'
      if (i.compare(ingredient)) {
        return true;
      } else {
        print('No match'); // Print message when no match is found
      }
    }
    return false; // Return false if no match is found after iterating through the list
  }

  void reset(){
    notifierPizzaBoxAnimation.value = false;
    notifierImagePizza.value = null;
    listIngredients.clear();
    notifierTotal.value = initialTotal;
    notiferCartIconAnimation.value++;
  }

  void startPizzaBoxAnimation(){
    notifierPizzaBoxAnimation.value = true;
  }
  Future<void> transformToImage(RenderRepaintBoundary boundary) async {
    final RenderBox renderBox = boundary as RenderBox;

    // Convert the boundary's local position to global coordinates
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    // Capture the boundary as an image
    final image = await boundary.toImage(pixelRatio: 3.0); // Optional: Adjust pixel ratio for better resolution
    final byteData = await image.toByteData(format: ImageByteFormat.png);

    // Convert byteData to Uint8List and update the notifier
    if (byteData != null) {
      // Correctly pass imageBytes, position, and size to the constructor
      notifierImagePizza.value = PizzaMetaData(
        imageBytes: byteData.buffer.asUint8List(), // Pass the imageBytes argument
        position: position,                       // Pass the position argument
        size: size,                               // Pass the size argument
      );
    }
  }
}