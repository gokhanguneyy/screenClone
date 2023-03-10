import 'package:flutter/material.dart';

class textfieldAndHeader extends StatelessWidget{
  textfieldAndHeader ({Key? key, required this.header, required this.tip}): super(key: key);

  final String header;
  final String tip; 

  @override 
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _paddingOfGroupWidgets(child: _headerOfTextField(header: header,)),
          _paddingOfGroupWidgets(child: _textFieldOfRegisterPage(tip: tip),)
        ],
      ),
    );
  }
}

class _paddingOfGroupWidgets extends StatelessWidget{
  _paddingOfGroupWidgets({Key? key, required this.child}): super(key: key);

  final Widget child;

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: _textfieldAndHeaderTools.widgetsPadding,
      child: child,
    );
  }
}

class _textFieldOfRegisterPage extends StatelessWidget{
  _textFieldOfRegisterPage ({Key ? key, required this.tip}): super(key: key);

  final String tip;

  @override 
  Widget build(BuildContext context){
    return TextField(
      
      decoration: InputDecoration(
        // arkaPLana renk veriyoruz
        filled: true, 
        fillColor: _textfieldAndHeaderTools.textFieldFillColor,


        // textField seçildiğindeki border ayarları
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(_textfieldAndHeaderTools.radiusCircular)), 
          borderSide: BorderSide(color: _textfieldAndHeaderTools.textFieldBorderColor)
        ),


        // textField seçili olmadığı zamanlardaki border ayarları
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(_textfieldAndHeaderTools.radiusCircular)), borderSide: BorderSide.none),

        
        contentPadding: _textfieldAndHeaderTools.contentPadding,

        // textField içerisindeki ipucu
        hintText: tip, 
      ),
    );
  }
} 

class _textfieldAndHeaderTools{
  static final Color colorOf_headerOfTextField = Colors.black;
  static final Color textFieldFillColor = Colors.grey.shade200;
  static final Color textFieldBorderColor = Colors.orange;
  static final double radiusCircular = 12;
  static final EdgeInsets contentPadding = EdgeInsets.only(left: 30, top: 20, bottom: 20);
  static final EdgeInsets widgetsPadding = EdgeInsets.only(top: 5, bottom: 5);
}

class _headerOfTextField extends StatelessWidget{
  _headerOfTextField({Key? key, required this.header}): super(key: key);

  final String header;

  @override 
  Widget build(BuildContext context){
    return Text(
      header, 

      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: _textfieldAndHeaderTools.colorOf_headerOfTextField,
        fontWeight: FontWeight.bold
      ),
    );
  }
}