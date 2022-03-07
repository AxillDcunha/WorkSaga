import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 100,
            child: AppBar(
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                automaticallyImplyLeading: false,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(height: 20,),
                  Text('Work Saga', style: TextStyle(color: Colors.black),),
                  Row(
                    children: [
                      Icon(Icons.location_city_rounded, color: Colors.black,),
                      TextButton(onPressed: (){}, child: Text('Location')),
                    ],
                  )
      
                ]),
                 
                )
                ),
          ),
      ),
      
    );
  }
}
