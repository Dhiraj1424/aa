
import 'package:bmi_calculator/color/constans.dart';
import 'package:flutter/material.dart';


          

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,required this.iconText,required this.icon
  }) : super(key: key);
  final String iconText;
  final IconData icon; 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
        size: 70,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(iconText,
        style:klabelTextStyle, 
        ),

        
        
      ],
    );
  }
}