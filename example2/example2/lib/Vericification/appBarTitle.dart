import 'package:flutter/material.dart'; 

class appBarTitle extends StatelessWidget{
  appBarTitle({Key? key, required this.title}): super(key: key);

  final String title;

  @override 
  Widget build(BuildContext context){
    return Text(
      title, 
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: Colors.black, 
        fontWeight: FontWeight.normal, 
      ),
    );
  }
}