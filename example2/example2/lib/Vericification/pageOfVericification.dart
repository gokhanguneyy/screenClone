import 'package:example2/Login/pageOfLogin.dart';
import 'package:example2/Vericification/intoText.dart';
import 'package:example2/Vericification/language_of_vericification.dart';
import 'package:example2/Vericification/subtitle.dart';
import 'package:example2/Vericification/textFieldForVericification.dart';
import 'package:flutter/material.dart';

import '../ortakComponentler/ortakButon.dart';
import 'appBarTitle.dart'; 

class pageOfVericification extends StatelessWidget{
  pageOfVericification({Key? key}): super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle(title: "Vericification"),
        leading: IconButton(onPressed: (){Navigator.pop(context, MaterialPageRoute(builder: (context)=> pageOfLogin()));}, icon: Icon(Icons.arrow_back_outlined,color: Colors.black,)),
      ), 

      body:Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                _customPagePadding(
                  child: intoText(textColor:_projectTools.blackColor , text: languageOfVericification.into),
                ),

                _customPagePadding(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textFieldForVericification(),
                    textFieldForVericification(),
                    textFieldForVericification(),
                    textFieldForVericification(),
                  ],
                )),

                _customPagePadding(
                  child: subTitle(textColor: _projectTools.blackColor, text: languageOfVericification.subMessege1 + languageOfVericification.subMessage2 ),
                ),

                _customPagePadding(
                  child: subTitle(textColor: _projectTools.orangeColor, text: languageOfVericification.orangeSubMessage),
                ),

                
                _customPagePadding(child: projeOrtakButon(buttonMessage: languageOfVericification.buttonMessage, onPresseds: () {},)),
               
              ],
            ),
          ],
        ),
      )
    );
  }
}

class _projectTools{
  static final Color orangeColor = Colors.orange; 
  static final Color blackColor = Colors.black;
}

class _customPagePadding extends StatelessWidget{
  _customPagePadding  ({Key? key, required this.child}): super(key: key); 

  final double paddingValue = 10;
  final Widget child;
  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: paddingValue, bottom: paddingValue),
      child: child,
    );

  }
}

