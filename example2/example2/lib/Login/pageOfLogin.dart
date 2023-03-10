import 'package:example2/Login/language_of_login.dart';
import 'package:example2/Login/textFieldForLogin.dart';
import 'package:example2/ortakComponentler/sublimeHeaderOfPages.dart';
import 'package:example2/ortakComponentler/texfield_and_header.dart';
import 'package:flutter/material.dart';

import '../Register/pageOfRegister.dart';
import '../Vericification/pageOfVericification.dart';
import '../ortakComponentler/have_account.dart';
import '../ortakComponentler/headerOfPages.dart';
import '../ortakComponentler/ortakButon.dart';
import 'image.dart';

class pageOfLogin extends StatelessWidget{
  pageOfLogin({Key? key}): super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: _toolsOfLogin.arkaPlanRenk,
    
      body: Padding(
        padding: EdgeInsets.all(20), 
        child: ListView(
          shrinkWrap: true, 
          padding: EdgeInsets.only(top: 50),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Image 
                _customPagePadding(
                  child: Center(
                    child: image(imageUrl:languageOfLogin.imagePath),
                  ), 
                  top: _pagePaddingValues.paddingValueX, 
                  bottom: _pagePaddingValues.paddingValue3X,
                ),
                

                //PAGE HEADER
                _customPagePadding(
                  top: _pagePaddingValues.paddingValueX, 
                  bottom: _pagePaddingValues.paddingValue8X,
                  child: Center(
                    child: projectPageHeader(header: languageOfLogin.pageHeader),
                  ),
                ),

                // PAGE SUBLIMES
                sublimeHeadersOfPage(
                  sublime1:languageOfLogin.subline1, 
                  sublime2: languageOfLogin.subline2,
                ),


                //TEXTFIELD AND ITS HEADER
                _customPagePadding(
                  top: _pagePaddingValues.paddingValueX, 
                  bottom: _pagePaddingValues.paddingValueX, 
                  child: textfieldAndHeader(
                    header: languageOfLogin.textFieldHeader, 
                    tip: languageOfLogin.textFieldTip,
                  ),
                ),


                // CUSTOM TEXTFIELD AND ITS HEADER
                _customPagePadding(
                  top: _pagePaddingValues.paddingValueX, 
                  bottom: _pagePaddingValues.paddingValueX, 
                  child: CustomtextfieldAndHeader(
                    header: languageOfLogin.customTextFieldHeader, 
                    tip: languageOfLogin.customTextFieldTip,
                  ),
                ),
               

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child:_forgotPassword() ,
                      onTap: (){},
                    )
                    
                  ],
                ),

                // LOGIN BUTTON
                _customPagePadding(
                  top: _pagePaddingValues.paddingValue2X, 
                  bottom: _pagePaddingValues.paddingValueX, 
                  child: projeOrtakButon(
                    onPresseds: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pageOfVericification()));
                    },
                    buttonMessage: languageOfLogin.loginButtonMessage,
                  ),
                ),
                

                // HAVE ACCOUNT
                _customPagePadding(
                  top: _pagePaddingValues.paddingValueX, 
                  bottom: _pagePaddingValues.paddingValueX, 
                  child: haveAccount(
                    upOrin: languageOfLogin.upOrIn, 
                    haveOrHaveNotAccount: languageOfLogin.haveOrHaveNotAccount,
                    onPresseds: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pageOfRegister()));
                    },
                  ),
                ),
               
                

              ],
            )
          ],
        ),
      ), 
    );
  }
}


// Forgot password
class _forgotPassword extends StatelessWidget{
  _forgotPassword({Key? key}): super(key: key);

  @override 
  Widget build(BuildContext context){
    return Text(
      languageOfLogin.forgotPassword, 
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color:_toolsOfLogin.blackColor,
      ),
    );
  }
}

class _customPagePadding extends StatelessWidget{
  _customPagePadding({Key? key, required this.child, required this.top, required this.bottom}):super(key: key);
  
  final Widget child;
  final double top;
  final double bottom;
  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom), 
      child: child,
    );
  }
}

class _pagePaddingValues{
  static final double value = 5;
  static final double paddingValueX=value*1;
  static final double paddingValue2X=value*2;
  static final double paddingValue3X=value*3;
  static final double paddingValue8X=value*8;

}

class _toolsOfLogin{
  static final Color arkaPlanRenk = Colors.white;
  static final Color blackColor = Colors.black;
}