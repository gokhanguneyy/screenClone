import 'package:flutter/material.dart'; 

class subTitle extends StatelessWidget{
  subTitle({Key? key, required this.textColor, required this.text}): super(key: key);
  
  final Color textColor;
  final String text; 

  @override 
  Widget build(BuildContext context){
    return Text(
      text,  
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: textColor, 
        fontWeight: FontWeight.bold
      ),
    );
  }
}