import 'package:flutter/material.dart';

class Carousel_item extends StatelessWidget {
  
  
   Carousel_item({
    Key? key,
     required this.img
  }) : super(key: key);


  String img;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 400,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
