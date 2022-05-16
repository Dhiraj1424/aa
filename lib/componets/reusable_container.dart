import 'package:flutter/material.dart';
class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,required this.cardColor, this.cardWidget, this.ontapp
  }) : super(key: key);
  final Color cardColor;
  final Widget? cardWidget;
  final Function? ontapp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontapp;
      },
      child: Container(
                    margin:const  EdgeInsets.all(10),
                    child: cardWidget,
                    decoration:BoxDecoration(
        color: cardColor,
        
        borderRadius:const  BorderRadius.all(Radius.circular(10))),
                  ),
    );
  }
}

