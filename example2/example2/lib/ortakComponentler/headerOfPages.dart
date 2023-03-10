import 'package:flutter/material.dart';

class projectPageHeader extends StatelessWidget{
  projectPageHeader ({Key? key, required this.header}): super(key: key);
  
  final String header;

  @override 
  Widget build(BuildContext context){
    return Text(
      header, 
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: _headerOfPageTools.headerColor,
      ),
    );
  }
}

class _headerOfPageTools{
  static final Color headerColor = Colors.black;
}