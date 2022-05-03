import 'package:flutter/material.dart';
class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,required this.cardColor, this.cardWidget
  }) : super(key: key);
  final Color cardColor;
  final Widget? cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
                  margin:const  EdgeInsets.all(10),
                  child: cardWidget,
                  decoration:BoxDecoration(
      color: cardColor,
      
      borderRadius: BorderRadius.all(Radius.circular(10))),
                );
  }
}

