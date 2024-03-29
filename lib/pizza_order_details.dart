import 'package:flutter/material.dart';

import 'cart.dart';
import 'ingredient.dart';
import 'pizza_cart_button.dart';
import 'pizza_ingredients.dart';
import 'pizza_size_button.dart';
import 'profile.dart';

const _PizzaCartSize = 55.0;

class PizzaOrderDetails extends StatelessWidget {
  const PizzaOrderDetails({Key? key}) : super(key: key);

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
          leading: Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back
              ),
              onTap: () => {
              Navigator.pop(context)
              },
            ),
          ),
          backgroundColor: Colors.green,
          elevation: 10,
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart_checkout_outlined,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                );
              },
            ),
          ],
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              bottom: 50,
              left: 10,
              right: 10,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: _PizzaDetails()),
                    Expanded(
                      flex: 2,
                      child: PizzaIngredients(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              height: _PizzaCartSize,
              width: _PizzaCartSize,
              left: MediaQuery.of(context).size.width / 2 - _PizzaCartSize / 2,
              child: PizzaCartButton(
                onTap: () {
                  print('cart');
                },
              ),
            )
          ],
        ),
    );
  }
}

enum _PizzaSizeValue {
  s,
  m,
  l,
}
class _PizzaSizeState {
  _PizzaSizeState(this.value) : factor = _getFactorBySize(value);
  final _PizzaSizeValue value;
  final double factor;

  static double _getFactorBySize(_PizzaSizeValue value) {
    switch(value){
      case _PizzaSizeValue.s:
        return 0.75;
      case _PizzaSizeValue.m:
        return 0.85;
      case _PizzaSizeValue.l:
        return 1.0;
      default:
        return 0.0;
    }

  }


}

class _PizzaDetails extends StatefulWidget {
  const _PizzaDetails({Key? key}) : super(key: key);

  @override
  _PizzaDetailsState createState() => _PizzaDetailsState();
}

class _PizzaDetailsState extends State<_PizzaDetails>
    with TickerProviderStateMixin {
  @override
  final _listIngredients = <Ingredient>[];
  late AnimationController _animationController;
  late AnimationController _animationRotationController;
  int _total = 15;
  final _notifierFocused = ValueNotifier(false);
  List<Animation> _animationList = <Animation>[];
  late BoxConstraints _pizzaConstraints;
  final _notifierPizzaSize = ValueNotifier<_PizzaSizeState>(_PizzaSizeState(_PizzaSizeValue.m));

  Widget _buildIngredientsWidget() {
    List<Widget> elements = [];
    if (_animationList.isNotEmpty) {
      for (int i = 0; i < _listIngredients.length; i++) {
        Ingredient ingredient = _listIngredients[i];
        final ingredientWidget = Image.asset(
          ingredient.imageUnit,
          height: 40,
        );

        for (int j = 0; j < ingredient.positions.length; j++) {
          final animation = _animationList[j];
          final position = ingredient.positions[j];
          final positionX = position.dx;
          final positionY = position.dy;

          if (i == _listIngredients.length - 1) {
            double fromX = 0.0, fromY = 0.0;
            if (j < 1) {
              fromX = -_pizzaConstraints.maxWidth * (1 - animation.value);
            } else if (j < 2) {
              fromX = _pizzaConstraints.maxWidth * (1 - animation.value);
            } else if (j < 4) {
              fromY = -_pizzaConstraints.maxHeight * (1 - animation.value);
            } else {
              fromY = _pizzaConstraints.maxHeight * (1 - animation.value);
            }

            final opacity = animation.value;

            if (animation.value > 0) {
              elements.add(
                Opacity(
                  opacity: opacity,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(
                        fromX + _pizzaConstraints.maxWidth * positionX,
                        fromY + _pizzaConstraints.maxHeight * positionY,
                      ),
                    child: ingredientWidget,
                  ),
                ),
              );
            }
          } else {
            elements.add(
              Transform(
                transform: Matrix4.identity()
                  ..translate(
                    _pizzaConstraints.maxWidth * positionX,
                    _pizzaConstraints.maxHeight * positionY,
                  ),
                child: ingredientWidget,
              ),
            );
          }
        }
      }
      return Stack(
        children: elements,
      );
    }
    return SizedBox.fromSize();
  }

  void _buildIngredientsAnimation() {
    _animationList.clear();
    _animationList.add(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.8, curve: Curves.decelerate),
      ),
    );
    _animationList.add(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.2, 0.8, curve: Curves.decelerate),
      ),
    );
    _animationList.add(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.4, 1.0, curve: Curves.decelerate),
      ),
    );
    _animationList.add(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.1, 0.7, curve: Curves.decelerate),
      ),
    );
    _animationList.add(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.3, 1.0, curve: Curves.decelerate),
      ),
    );
  }

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    _animationRotationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationRotationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: DragTarget<Ingredient>(
          onAccept: (ingredient) {
            print('onAccept');
            _notifierFocused.value = false;
            setState(() {
              _listIngredients.add(ingredient);
              _total++;
            });
            _buildIngredientsAnimation();
            _animationController.forward(from: 0.0);
          },
          onWillAccept: (ingredient) {
            print('onWillAccept');
            _notifierFocused.value = true;
            for (Ingredient i in _listIngredients) {
              if (i.compare(ingredient!)) {
                return false;
              }
            }
            return true;
          },
          onLeave: (ingredient) {
            print('onLeave');
            _notifierFocused.value = false;
          },
          builder: (Contex, list, rejects) {
            return LayoutBuilder(builder: (context, constraints) {
              _pizzaConstraints = constraints;
              return ValueListenableBuilder<_PizzaSizeState>(
                valueListenable: _notifierPizzaSize,
                builder: (context,pizzaSize, _) {
                  return RotationTransition(
                    turns: CurvedAnimation(parent: _animationRotationController, curve: Curves.elasticOut),
                    child: Stack(
                      children: [
                        Center(
                          child: ValueListenableBuilder<bool>(
                              valueListenable: _notifierFocused,
                              builder: (context, focused, _) {
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 400),
                                  height: focused
                                      ? constraints.maxHeight*pizzaSize.factor
                                      : constraints.maxHeight*pizzaSize.factor - 10,
                                  child: Stack(
                                    children: [
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 15.0,
                                              color: Colors.black26,
                                              offset: Offset(0.0, 5.0),
                                              spreadRadius: 5.0,
                                            ),
                                          ],
                                        ),
                                        child: Image.asset(
                                            'assets/images/part1/dish.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset(
                                            'assets/images/part1/pizza-1.png'),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        AnimatedBuilder(
                            animation: _animationController,
                            builder: (context, _) {
                              return _buildIngredientsWidget();
                            },
                            ),
                      ],
                    ),
                  );
                }
              );
            }
            );
          },
        )),
        const SizedBox(
          height: 15,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: Offset(0.0, 0.0),
                    end: Offset(0.0, animation.value),
                  ),
                ),
                child: child,
              ),
            );
          },
          child: Text(
            '\$$_total',
            key: UniqueKey(),
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.brown),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ValueListenableBuilder<_PizzaSizeState>(
            valueListenable: _notifierPizzaSize,
            builder: (context,pizzaSize, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PizzaSizeButton(text: 'S',
                    onTap: (){
                      _updatePizzaSize(_PizzaSizeValue.s);
                  },
                    selected: pizzaSize.value == _PizzaSizeValue.s,
                  ),
                  PizzaSizeButton(text: 'M',
                    onTap: (){
                      _updatePizzaSize(_PizzaSizeValue.m);
                  },
                    selected: pizzaSize.value == _PizzaSizeValue.m,),
                  PizzaSizeButton(text: 'L',
                    onTap: (){
                      _updatePizzaSize(_PizzaSizeValue.l);
                  },
                    selected:pizzaSize.value == _PizzaSizeValue.l,),
                ],
              );
            }
          ),
      ],
    );
  }
  void  _updatePizzaSize(_PizzaSizeValue value){
    _notifierPizzaSize.value = _PizzaSizeState(value);
    _animationRotationController.forward(from: 0.0);
  }
}




