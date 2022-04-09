import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../models/selectedcatmodel.api.dart';
import '../../models/selectedcatmodel.dart';
import 'categories.dart';
import 'package:lottie/lottie.dart';

class SelectedCategories extends StatefulWidget {
  final String value;
  const SelectedCategories({Key? key, required this.value}) : super(key: key);
  @override
  State<SelectedCategories> createState() => _SelectedCategoriesState();
}

class _SelectedCategoriesState extends State<SelectedCategories> {
   late List<SelectedCategoriesModel> _SelectedCategorieslist;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getCategorie();
  }

  Future<void> getCategorie() async {
    _SelectedCategorieslist = await Selectedlist.getCategories();
    setState(() {
      isLoading = false;
    });
    print(_SelectedCategorieslist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.red,
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 231,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/selcat.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('WorkSaga',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            )),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on,
                              size: 16,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            label: Text(
                              'Vasai-Virar, Maharashtra',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text('Search'),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  ),
                  height: 38,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEEEEEE),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [],
        )
      ],
    )));
  }
}
