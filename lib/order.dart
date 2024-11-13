import 'package:flutter/material.dart';

class Order2ndScreen extends StatefulWidget {
  const Order2ndScreen({Key? key}) : super(key: key);

  @override
  _Order2ndScreenState createState() => _Order2ndScreenState();
}

class _Order2ndScreenState extends State<Order2ndScreen> {
  int counter = 1; // Initial counter value

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.favorite_rounded,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
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
                                'Spicy Chicken\nDimsum',
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
                                IconButton(
                                  icon: Text(
                                    '-',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter > 1) counter--; // Decrease counter
                                    });
                                  },
                                ),
                                Text(
                                  counter.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25),
                                ),
                                IconButton(
                                  icon: Text(
                                    '+',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      counter++; // Increase counter
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
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
                                    '65 Calories',
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
                        // Details Section
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
                        // Ingredients Section
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
                              Container(
                                height: 90,
                                padding: EdgeInsets.only(right: 20),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    // Ingredient items
                                    IngredientItem('assets/images/happy/onion.png', Colors.red[100]),
                                    IngredientItem('assets/images/happy/cabbage.png', Colors.lightGreen[100]),
                                    IngredientItem('assets/images/happy/corn.png', Colors.yellow[100]),
                                    IngredientItem('assets/images/happy/redpepper.png', Colors.redAccent[100]),
                                    IngredientItem('assets/images/happy/carrot.png', Colors.orange[100]),
                                    IngredientItem('assets/images/happy/broccoli.png', Colors.lightGreenAccent[100]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Counter Section

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 56,
          child: RawMaterialButton(
            fillColor: Colors.yellow,
            shape: CircleBorder(),
            onPressed: () {},
            elevation: 2,
            child: Container(child: Icon(Icons.add)),
          ),
        ),
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  final String imagePath;
  final Color? color;

  IngredientItem(this.imagePath, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
