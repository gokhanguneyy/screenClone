import 'package:flutter/material.dart';

class sublimeHeadersOfPage extends StatelessWidget{
  sublimeHeadersOfPage ({Key? key, required this.sublime1, required this.sublime2}): super(key: key);
  
  final String sublime1;
  final String sublime2;

  @override 
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _firstSublimeHeader(sublime1: sublime1), 
        _secondSublimeText(sublime2: sublime2),
      ],
    );
  }
}

class _firstSublimeHeader extends StatelessWidget{
  _firstSublimeHeader({Key? key, required this.sublime1}): super(key: key);

  final String sublime1;

  @override
  Widget build(BuildContext context){
    return Text(
      sublime1, 
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w500,
        color: _sublimeHeaderOfPagesTools.sublime1Color,
      ),
    );
  }
}

class _secondSublimeText extends StatelessWidget{
  _secondSublimeText({Key? key, required this.sublime2}):super(key: key);

  final String sublime2;

  @override 
  Widget build(BuildContext context){
    return Text(
      sublime2, 
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: _sublimeHeaderOfPagesTools.sublime2Color,
        fontWeight: FontWeight.normal
      ),
    );
  }
}

class _sublimeHeaderOfPagesTools{
  static final Color sublime1Color = Colors.black;
  static final Color sublime2Color = Colors.grey;
}