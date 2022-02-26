import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cached_network_image/cached_network_image.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
            child: CachedNetworkImage(
                imageUrl: 'assets/images/splash1.png',
                width: size.width * 0.7,
              ),
          ),
          Positioned(
              child: Text(
            'Work Saga',
            style: TextStyle(fontSize: 50, fontFamily: 'NanumMyeongjo'),
          )),
          Positioned(
              bottom: 0,
              right: 0,
              child: CachedNetworkImage(
                imageUrl: 'assets/images/splash2.png',
                width: size.width * 0.7,
              )
              )
        ],
      ),
    );
  }
}
