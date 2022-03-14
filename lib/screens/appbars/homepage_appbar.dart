import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageAppbar extends StatefulWidget {
  @override
  State<HomepageAppbar> createState() => _HomepageAppbarState();
}

class _HomepageAppbarState extends State<HomepageAppbar> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(-1, -1),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Work Saga',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.white,
                        elevation: 0
                        ),
                      icon: Icon(
                        Icons.location_city,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 18.0,
                      ),
                      label: Text('Location', style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.white,
                        elevation: 0
                        ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                  label: Text(''),
                ),
              ],
            ),
          ),
        ),
      ),





      
    );
  }
}
