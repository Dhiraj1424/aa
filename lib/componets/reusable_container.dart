import 'package:flutter/material.dart';
class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,required this.cardColor, this.cardWidget, this.ontap
  }) : super(key: key);
  final Color cardColor;
  final Widget? cardWidget;
  final Function? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap;
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

