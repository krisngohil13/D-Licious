import 'package:flutter/material.dart';
// HotestItem Widget


class HotestItem extends StatelessWidget {
  final String dishname;
  final String imagesrc;
  final VoidCallback press;

  HotestItem({
    required this.dishname,
    required this.imagesrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,  // Fixed width for each box
      height: 150, // Adjust height to allow room for both image and text
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Rounded corners for the image
              child: Container(
                width: 100,  // Ensure image fits within this size
                height: 100, // Make image size consistent
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagesrc),
                    fit: BoxFit.cover, // Ensures the image fills the box
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),  // Space between image and dish name
            Text(
              dishname,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}