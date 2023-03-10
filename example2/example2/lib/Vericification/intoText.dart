import 'package:flutter/material.dart'; 

class intoText extends StatelessWidget{
  intoText({Key? key, required this.textColor, required this.text}): super(key: key);

  final Color textColor;
  final String text; 

  @override 
  Widget build(BuildContext context){
    return Text(
      text, 
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold, 
        color: textColor
      ),
    );
  }
}