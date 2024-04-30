

import 'package:flutter/material.dart';

class ConditionWidget extends StatelessWidget {
  final bool condition;
  final Widget trueChild;
  final Widget falseChild;

   ConditionWidget({Key? key, required this.condition, required this.trueChild, required this.falseChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(condition){
     return trueChild;
    }else{
      return falseChild;
    }
  }
}
