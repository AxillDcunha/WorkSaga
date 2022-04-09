import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SelectedCategoriesWidget extends StatefulWidget {
  const SelectedCategoriesWidget({Key? key}) : super(key: key);

  @override
  State<SelectedCategoriesWidget> createState() =>
      _SelectedCategoriesWidgetState();
}

class _SelectedCategoriesWidgetState extends State<SelectedCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage("assets/images/try2.jpg"), fit: BoxFit.fill)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xe5ffffff),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 300,
            height: 80,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Name Surname',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 18,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Container(
                        child: Text(
                      'The above copyright notice and this permission notice shall be included',
                      style: TextStyle(fontSize: 12),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
