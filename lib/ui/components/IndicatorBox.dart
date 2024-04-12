import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndicatorBox extends StatelessWidget {
  const IndicatorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:10 ,
      width: 200,
      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
    );
  }
}
