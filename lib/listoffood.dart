import 'package:flutter/material.dart';

class ListFood extends StatelessWidget {
  final String  dishname, imagesrc;
  final Function press;

  const ListFood(
      {Key? key,
      required this.dishname,
      required this.imagesrc,
      required this.press
      }
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Container(
      margin: EdgeInsets.only(left: 15,  top: 20, bottom: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.black12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Color(0xFFB0CCE1).withOpacity(0.32),
                  )
                ]),
            child:
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () { press(); },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        imagesrc,
                        width: size.width * 0.13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                dishname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),),
        ],
      ),
    );
  }
}
