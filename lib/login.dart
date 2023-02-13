import 'package:flutter/material.dart';
import 'menu.dart';

class Login_First extends StatelessWidget {
  const Login_First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          Stack(
            fit: StackFit.expand,
            children: [
            Image.asset('assets/images/background/login_background.png',
            fit: BoxFit.fill,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Container(
                     child: Image.asset('assets/images/logo/Chef Logo.png',
                     ),
                     margin: EdgeInsets.only(top: 100,bottom: 40),
                     height: size.height*0.4,
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 40),
                     child: Text(
                       'Cooking\nExperience\nLike a Chef',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 45,
                     ),
                     textAlign: TextAlign.left,
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 40,top: 10),
                     margin: EdgeInsets.only(bottom: 80),
                     child: Text(
                       'Let\'s make a delicious dish with the best\nrecipe for the family',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 10,
                         fontFamily: 'PoppinsExtraLight',
                       ),
                       textAlign: TextAlign.left,
                     ),
                   ),
                    Padding(
                       padding: const EdgeInsets.only(right: 20),
                       child:
                       InkWell(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Container(
                               child:
                               Center(
                                 child: Text(
                                   'Next',
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,
                                   fontFamily: 'Poppins',
                                 ) ,
                                 ),

                               ),
                               width: size.width*0.3,
                               height: size.height*0.07,
                               decoration: BoxDecoration( color: Colors.orange[800],
                                 borderRadius: BorderRadius.all(Radius.circular(50)),

                               ),
                             ),
                           ],
                         ),
                         onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context){
                             return Menu2ndScreen();
                           },
                           ),
                           );
                         },
                       ),
                     ),
                 ],
              )
          ],

          ),
          ),
        ],
      ),
    );
  }
}
