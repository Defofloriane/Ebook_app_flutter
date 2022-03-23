import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  const RoundedButton({
    Key key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(0.11),
              ),
            ]),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/home_page");
          },
          child: Text(
            "start Reading",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
