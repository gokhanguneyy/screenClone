import 'package:flutter/material.dart';

import '../Login/pageOfLogin.dart'; 

class projeOrtakButon extends StatelessWidget{
  projeOrtakButon({Key? key, required this.buttonMessage, required this.onPresseds}): super(key: key);

  final String buttonMessage;
  final void Function() onPresseds;
  @override 
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: _buttonType(onPresseds:onPresseds, buttonMessage: buttonMessage)
    );
  }
}

class _ortakButtonTools{
  static final double buttonRadius = 12;
  static final Color buttonColor = Colors.orange;
  static final EdgeInsets buttonMessagePadding = EdgeInsets.all(20);
}

class _buttonType extends StatelessWidget{
  _buttonType ({Key? key, required this.buttonMessage, required this.onPresseds}): super(key: key);
  
  final String buttonMessage;
  final void Function() onPresseds;
  @override 
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: onPresseds,    
      child: _buttonMessagePadding(buttonMessage:buttonMessage ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(_ortakButtonTools.buttonRadius)),
        ),
        backgroundColor: _ortakButtonTools.buttonColor,
      ),
    );
  }
}

class _buttonMessage extends StatelessWidget{
  _buttonMessage({Key? key, required this.buttonMessage}): super(key: key);
  final String buttonMessage;
  @override 
  Widget build(BuildContext context){
    return Text(
      buttonMessage
    );
  }
}

class _buttonMessagePadding extends StatelessWidget{
  _buttonMessagePadding({Key? key, required this.buttonMessage}): super(key: key);

  final String buttonMessage;
  @override 
  Widget build(BuildContext context){
    return Padding(
      padding:  _ortakButtonTools.buttonMessagePadding,
      child: _buttonMessage(buttonMessage: buttonMessage),
    );
  }
}