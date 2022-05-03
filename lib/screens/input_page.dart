import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                   child: ReusableContainer(
                     cardColor: Color(0xFF1D1E33),
                   )),
                Expanded(child: ReusableContainer(
                  cardColor: Color(0xFF1D1E33),
                )),
              ],
            )),
            Expanded(child: ReusableContainer(
              cardColor: Color(0xFF1D1E33),
            )),
           
               Expanded(
                child: Row(
              children: [
                Expanded(
                  
                    child: ReusableContainer(
                      cardColor: Color(0xFF1D1E33),
                    )),
                Expanded(child: ReusableContainer(cardColor: Color(0xFF1D1E33),)),
              ],
            )), 
          ],
        ));
  }
}

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
