import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          'assets/images/food.png', // Replace with your image URL
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200.0, // Adjust the height as needed
        ),
      ),
    );
  }
}