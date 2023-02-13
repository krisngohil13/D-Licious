import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.08,
                          child: Card(elevation: 10,
                            child: Center(
                                child: Text(
                              'View All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/bbq.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.9,
                height: size.height * 0.3,
              ),

              //2nd Image of Slider
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.08,
                          child: Card(elevation: 10,
                            child: Center(
                                child: Text(
                              'View All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/bbq.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.9,
                height: size.height * 0.3,
              ),

              //3rd Image of Slider
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.08,
                          child: Card(elevation: 10,
                            child: Center(
                                child: Text(
                              'View All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/bbq.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.9,
                height: size.height * 0.3,
              ),

              //4th Image of Slider
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.08,
                          child: Card(elevation: 10,
                            child: Center(
                                child: Text(
                              'View All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/bbq.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.9,
                height: size.height * 0.3,
              ),

              //5th Image of Slider
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Stack(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.08,
                          child: Card(elevation: 10,
                            child: Center(
                                child: Text(
                              'View All',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background/bbq.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.9,
                height: size.height * 0.3,
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: size.height * 0.3,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),
        ],
      ),
    );
  }
}
