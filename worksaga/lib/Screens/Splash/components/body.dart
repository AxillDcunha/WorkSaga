import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/d2.png",
            width: size.width*0.6,
            )
            ),
            Positioned(
          bottom: 0,
          right :  0,
          child: Image.asset(
            "assets/images/d3.png",
            width: size.width*0.6,
            )
            )

            ],

        ),
    );
  }
}