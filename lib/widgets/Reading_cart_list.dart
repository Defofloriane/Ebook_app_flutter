import 'package:ebook/constantes.dart';
import 'package:ebook/widgets/Book_reading.dart';
import 'package:flutter/material.dart';

class ReadingBook extends StatelessWidget {
  final String img;
  final String title;
  final String auth;
  final double rating;
  final String text;

  const ReadingBook({
    Key key,
    this.img,
    this.title,
    this.auth,
    this.rating,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 203,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor,
                    ),
                  ]),
            ),
          ),
          Image.asset(
            img,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                BookReading(
                  rading: "4.9",
                ),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: kBlackColor),
                            children: [
                          TextSpan(
                              text: "$title\n ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: auth,
                              style: TextStyle(color: kLightBlackColor)),
                        ])),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/detail_page");
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 102,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: kBlackColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29),
                                bottomRight: Radius.circular(29),
                              )),
                          child: Text(
                            text,
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
