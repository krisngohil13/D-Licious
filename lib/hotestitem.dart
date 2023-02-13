import 'package:flutter/material.dart';

class HotestItem extends StatelessWidget {
  final String dishname, imagesrc;
  final Function press;

  const HotestItem(
      {Key? key,
      required this.dishname,
      required this.imagesrc,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: press(),
        child: Column(
          children: [
            Container(padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                imagesrc,
                width: 110,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                dishname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
