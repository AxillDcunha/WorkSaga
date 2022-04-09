// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:http/http.dart' as http;
import '../../widgets/homepage_appbar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String name;
  late PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Size get; preferredSize => const Size.fromHeight(100);
    return SafeArea(
        child: Scaffold(
            // appBar: AppBarWidget();
            backgroundColor: Color(0xfffaf5ee),
            body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    // decoration: BoxDecoration(
                    //   color: Color(0xFFEEEEEE),
                    // ),
                    child: SingleChildScrollView(
                      child: Column(mainAxisSize: MainAxisSize.max, children: [
                        Container(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.26,
                          child: Stack(
                            children: [
                              Image.network(
                                'https://picsum.photos/seed/316/600',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.74, 0.67),
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/try2.jpg"),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.36, 0.77),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_circle_sharp,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    showMaterialModalBottomSheet(
                                      context: context,
                                      builder: (context) => Container(
                                        height: 300,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.94, 1.30),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.21),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Color.fromARGB(255, 90, 90, 90),
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    // showMaterialModalBottomSheet(
                                    //     context: context,
                                    //     builder: (context) => ());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        33, 0, 0, 0),
                                    child: Text(
                                      "helllo",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          33, 5, 23, 0),
                                      child: Text(
                                        'hello',
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        33, 11, 0, 0),
                                    child: Text(
                                      'Mumbai, Maharashtra, India',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xfffaf5ee),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.email_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('name@mail.com')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.phone),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('+91-9872534536')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xfffaf5ee),
                        ),
                        InkWell(
                          onTap: () {
                            print("tapped on container");
                          },
                          child: Container(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                children: [
                                  Icon(Icons.settings),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Setting')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xfffaf5ee),
                        ),
                      ]),
                    )))));
  }
}
