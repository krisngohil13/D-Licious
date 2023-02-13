import 'package:flutter/material.dart';
import 'package:food_delivery/hotestitem.dart';
import 'package:food_delivery/listoffood.dart';
import 'package:food_delivery/main_pizza_order.dart';
import 'package:food_delivery/order3rdscreen.dart';
import 'package:food_delivery/scroll.dart';

class Menu2ndScreen extends StatelessWidget {
  const Menu2ndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back_ios_sharp),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(Icons.search),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.apps),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 20, right: 30, left: 30),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Featured',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Lorem fisfuh sdvsdjn svuhfihu\nfufb sfuhs dfsfu.',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, right: 15, left: 15),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20,),
                height: 280,
                child: HomePage(),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'List Of Food',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          InkWell(onTap: () {}, child: Text('View All')),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.only(left: 10,right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ListFood(
                              dishname: 'Dosa',
                              imagesrc: 'assets/images/loginfood.png',
                              press: () {},
                            ),
                            ListFood(
                              dishname: 'Pizza',
                              imagesrc: 'assets/images/foodlist/pizza.png',
                              press: () {
                                Navigator.push
                                  (context,MaterialPageRoute(builder: (context) => MainPizzaOrderApp()),);
                              },
                            ),
                            ListFood(
                              dishname: 'Pani-Puri',
                              imagesrc: 'assets/images/foodlist/panipuri.png',
                              press: () {
                                Navigator.push
                                (context,MaterialPageRoute(builder: (context) => Order3rdScreen()),);
                              },
                            ),
                            ListFood(
                              dishname: 'Samosa',
                              imagesrc: 'assets/images/foodlist/samosa.png',
                              press: () {},
                            ),
                            ListFood(
                              dishname: 'Maggie',
                              imagesrc: 'assets/images/foodlist/maggie.png',
                              press: () {},
                            ),
                            ListFood(
                              dishname: 'Burger',
                              imagesrc: 'assets/images/foodlist/burger.png',
                              press: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child:
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hotest items',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.only(
                                left: 7, right: 7, top: 2, bottom: 2),
                            child: Text(
                              '46',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.orange[800],
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            HotestItem(
                              dishname: 'Momos', press: (){}, imagesrc: 'assets/images/happy/Momos.png',),
                            HotestItem(dishname: 'Momos', press: (){}, imagesrc: 'assets/images/happy/Momos.png',),
                            HotestItem(dishname: 'Momos', press: (){}, imagesrc: 'assets/images/happy/Momos.png',),
                            HotestItem(dishname: 'Momos', press: (){}, imagesrc: 'assets/images/happy/Momos.png',),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
