

import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final  shape;
  final  padding;
  final Color color;

  const CustomRaisedButton({Key? key,required this.onPressed, required this.child, this.shape, this.padding, this.color = Colors.transparent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 0,
          color: Colors.transparent,
          // style: BorderStyle.solid,
        ),
        backgroundColor: color, //<-- SEE HERE
        shape: shape,

      ),

      onPressed: onPressed,
      child:  child,

    );

    //   ElevatedButton(
    //   style: ButtonStyle(shape: shape , backgroundColor: MaterialStateProperty.all<Color>(color) ),
    //   onPressed: onPressed,
    //
    //   child: child
    //
    // );
  }
}
