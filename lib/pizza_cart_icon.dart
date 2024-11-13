import 'package:flutter/material.dart';
import 'package:food_delivery/cart.dart';
import 'package:food_delivery/pizza_order_provider.dart';

class PizzaCartIcon extends StatefulWidget {
  const PizzaCartIcon({super.key});

  @override
  State<PizzaCartIcon> createState() => _PizzaCartIconState();
}

class _PizzaCartIconState extends State<PizzaCartIcon> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animationScaleOut;
  late Animation<double> _animationScaleIn;

  int counter = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600),
    );
    _animationScaleOut = CurvedAnimation(parent: _controller, curve:Interval(0.0,0.5));
    _animationScaleIn = CurvedAnimation(parent: _controller, curve:Interval(0.5,1.0));
    WidgetsBinding.instance.addPostFrameCallback((_){
      final bloc = PizzaOrderProvider.of(context);
      bloc.notiferCartIconAnimation.addListener((){
        counter = bloc.notiferCartIconAnimation.value;
        _controller.forward(from: 0.0);
      });
    });
  }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
      builder: (context, snapshot) {
          double scale = 1.0;
          const scaleFactor= 0.5;
          if(_animationScaleOut.value < 1.0){
              scale = 1.0 + scaleFactor * _animationScaleOut.value;
          }else if (_animationScaleIn.value<= 1.0){
              scale = (1.0 + scaleFactor) - scaleFactor * _animationScaleIn.value;
          }
        return
          Transform.scale(
          alignment: Alignment.center,
          scale: scale,
          child: Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
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
              if(_animationScaleOut.value >0)
              Positioned(
                  top: 7,
                  right: 7,
                  child: Transform.scale(
                    alignment: Alignment.center,
                    scale: _animationScaleOut.value,
                    child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                    child: Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 10),
                    
                                    ),
                                  ),
                  )
              ),
            ],
          )
        );
      }
    );
  }
}
