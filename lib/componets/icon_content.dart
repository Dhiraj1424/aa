
import 'package:flutter/material.dart';

const labelTextStyle=TextStyle(
          color: Color(0xFF8D8E98));
          

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
        style:labelTextStyle, 
        ),

        
        
      ],
    );
  }
}