import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textFieldForVericification extends StatelessWidget{
  textFieldForVericification({Key? key}): super(key: key);

  @override 
  Widget build(BuildContext context){
    return SizedBox.square(
      dimension: 80,
      child:_vericificationTextField() ,
    );
  }
}

class _vericificationTextField extends StatelessWidget {
  const _vericificationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: _pageTools.orangeColor, 
      style: TextStyle(
        fontSize: 40,
        color: _pageTools.orangeColor,
      ),
      maxLength: 1,
      autofocus: true,
      decoration: InputDecoration(
        filled: true, 
        fillColor: _pageTools.transperentColor, 
        counterText: "",
        
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)), 
        borderSide: BorderSide(color: _pageTools.orangeColor), 
        ),

        border: InputBorder.none, 
        
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: _pageTools.orangeColor)),

        contentPadding: EdgeInsets.all(16), 

        labelStyle: Theme.of(context).textTheme.bodyLarge,
        
      ),

      // kullanıcı sadece rakam girebilir
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly
      ],
      textAlign: TextAlign.center,
    );
  }
}


class _pageTools{
  static final Color orangeColor = Colors.orange;
  static final Color transperentColor = Colors.transparent;
}