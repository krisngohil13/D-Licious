import 'package:flutter/material.dart';

class Order2ndScreen extends StatelessWidget {
  const Order2ndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: const Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    child: Image.asset('assets/images/happy/Momos.png'),
                  ),
                ), //Image
              ],
            ), //appbar
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Spicy Chicked\nDimsum',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Spacer(),
                          Container(
                            child: Text(
                              '\$6.99',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 30, bottom: 30),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '2.6',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 30, bottom: 30),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_rounded,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                Text(
                                  '65 Calaries',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 30, bottom: 30),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.access_alarm_outlined,
                                  color: Colors.redAccent,
                                  size: 20,
                                ),
                                Text(
                                  '20-30 min',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(
                              color: Colors.white,
                              child: Text(
                                'Chicken Momos Recipe in the delicious evening\nsnack and in monsoon',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Ingredients',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(height: 90,padding: EdgeInsets.only(right: 20),
                              child: ListView(
                                scrollDirection: Axis.horizontal,

                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.red[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset('assets/images/happy/onion.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.lightGreen[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Image.asset('assets/images/happy/cabbage.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.yellow[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Image.asset('assets/images/happy/corn.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.redAccent[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Image.asset('assets/images/happy/redpepper.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.orange[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Image.asset('assets/images/happy/carrot.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(color: Colors.lightGreenAccent[100],
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/images/happy/broccoli.png'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '-',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: Container(
            width: 100,
          height: 56,
          child: RawMaterialButton(
            fillColor: Colors.yellow,
            shape: CircleBorder(),
            onPressed: (){},
            elevation: 2,
            child: Container(child: Icon(Icons.add),),
          ),

        ),
      ),
    );
  }
}