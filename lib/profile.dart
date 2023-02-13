import 'package:flutter/material.dart';

class Profile_details extends StatelessWidget {
  const Profile_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Image.asset("assets/images/logo/profil.png",
        height: 900,),
      ),
    );
  }
}
