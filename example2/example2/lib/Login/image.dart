import 'package:flutter/material.dart';

class image extends StatelessWidget{
  image({Key? key, required this.imageUrl}): super(key: key);

  final String imageUrl;

  @override 
  Widget build(BuildContext context){
    return Image.asset(
      imageUrl,
    );
  }
}