import 'package:flutter/material.dart';

class screen_1 extends StatelessWidget {
  const screen_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Delicious Food")),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 40,
        leading: TextButton(
          onPressed: () {},
          child: Image.asset("assets/images/menu.png"),
        ),
        actions: [
          Container(
            height: 40.0,
            width: 40.0,
            margin: const EdgeInsets.only(right: 20, top: 10, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              children: [
                Container(
                  height: 45.0,
                  width: 335.0,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.red),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 45,
                        width: 285,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Food",
                              hintStyle: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Image.asset(
                        "assets/images/search.png",
                        height: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 45.0,
                  width: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/images/adjust.png",

                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
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
            ],
          ),
          // Expanded(
          //   child: GridView.builder(
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     itemBuilder: (context, index) {
          //       if (index == 0) {
          //         return Text(
          //           '',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold),
          //         );
          //       }
          //       return Card(
          //         child: Image.asset('assets/images/food.png'),
          //       );
          //
          //     },
          //     itemCount: 10,
          //   ),
          // )
        ],
      ),
    );
  }
}
