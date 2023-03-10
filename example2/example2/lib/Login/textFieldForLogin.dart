import 'package:flutter/material.dart'; 

class CustomtextfieldAndHeader extends StatelessWidget{
  CustomtextfieldAndHeader ({Key? key, required this.header, required this.tip}): super(key: key);

  final String header;
  final String tip; 

  @override 
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _paddingOfGroupWidgets(child: _headerOfCustomTextField(header: header,)),
          _paddingOfGroupWidgets(child: _customTextFieldForLogin(tip: tip),)
        ],
      ),
    );
  }
}

class _customTextFieldForLogin extends StatelessWidget{
  _customTextFieldForLogin({Key? key, required this.tip}): super(key: key);

  final String tip;
  @override 
  Widget build(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        // arka pana renk veriyoruz. 
        filled: true, 
        fillColor: _projeTools.greyShadeColor, 


        // textField seçildiğinde border ayarları
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)), 
          borderSide: BorderSide(color:_projeTools.orangeColor,), 
        ),

        // textfield seçili olmadığı zamanlarda border ayarları
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),

        contentPadding: EdgeInsets.only(left: 30, top: 20, bottom: 20), 

        // textfield içerisindeki ipucu
        hintText: tip,

        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: _projeTools.orangeColor,
      ),
    );
  }
}


class _headerOfCustomTextField extends StatelessWidget{
  _headerOfCustomTextField({Key? key, required this.header}): super(key: key);

  final String header;

  @override 
  Widget build(BuildContext context){
    return Text(
      header, 

      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color:_projeTools.blackColor,
        fontWeight: FontWeight.bold
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
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: child,
    );
  }
}



class _projeTools{
  static final Color blackColor = Colors.black;
  static final Color orangeColor = Colors.orange;
  static final Color greyShadeColor = Colors.grey.shade200;
}