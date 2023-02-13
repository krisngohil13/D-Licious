import 'package:flutter/material.dart';

class KpDemo extends StatefulWidget {
  const KpDemo({super.key});

  @override
  State<KpDemo> createState() => _KpDemoState();
}

class _KpDemoState extends State<KpDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Container(
          height: 700,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Found\n80 results",
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20
                                                    ),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20
                                                    ),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8, top: 80),
                                    height: 270,
                                    width: 180,
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 90,
                                            ),
                                            Container(
                                                child: Text(
                                                  "Oni Sandwitch",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Text(
                                                  "Spicy chicken snadwitch",
                                                  style: TextStyle(fontSize: 14),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.local_fire_department_rounded,
                                                    color: Colors.orange,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "78 Calories",
                                                    style: TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10, left: 50),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 20),
                                                  ),
                                                  Text(
                                                    "6.72",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 30),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Image(
                                        image: AssetImage("assets/image/food.png"),
                                        width: 160,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
