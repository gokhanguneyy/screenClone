import 'package:example2/Register/language_of_RegisterPage.dart';
import 'package:flutter/material.dart';

import '../Login/pageOfLogin.dart';
import '../ortakComponentler/have_account.dart';
import '../ortakComponentler/headerOfPages.dart';
import '../ortakComponentler/ortakButon.dart';
import '../ortakComponentler/sublimeHeaderOfPages.dart';
import '../ortakComponentler/texfield_and_header.dart'; 

class pageOfRegister extends StatelessWidget{
  pageOfRegister ({Key? key}): super(key: key);

  

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(_paddingOnly.paddingValue*4),
        child: ListView(
          shrinkWrap: true,
           padding: EdgeInsets.only(top: _paddingOnly.paddingValue * 30),
          children: 
            [Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [

                //PAGE HEADER
                Padding(
                  padding: EdgeInsets.only(bottom: _paddingOnly.paddingValue*8),
                  child: Center(child: projectPageHeader(header: languageOfRegisterPage.pageHeader)),
                ),
        
                // PAGE SUBLINES
                sublimeHeadersOfPage(sublime1: languageOfRegisterPage.subline1, sublime2: languageOfRegisterPage.subline2,),
        
                //  TEXTFIELD AND ITS HEADER
                _pagePadding(child:textfieldAndHeader(header: languageOfRegisterPage.firstTextFieldHeader, tip: languageOfRegisterPage.firstTextFieldTip)),
                _pagePadding(child: textfieldAndHeader(header: languageOfRegisterPage.secondTextFieldHeader, tip: languageOfRegisterPage.secondTextFieldTip)),
        
                // login option 
                _pagePadding(child: 
                  Center(
                    child: Text(
                      languageOfRegisterPage.loginOption ,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                  
                  
                // TEXTFIELD AND ITS HEADER
                _pagePadding(child:textfieldAndHeader(header: languageOfRegisterPage.thirdTextFieldHeader, tip: languageOfRegisterPage.thirdTextFieldTip)),
               
                       
                // ELEVATEDBUTTON 
                _pagePadding(child: projeOrtakButon(onPresseds: (){}  ,buttonMessage: languageOfRegisterPage.buttonText,)),
                        
                // have account part
                 _pagePadding(child:haveAccount(upOrin: languageOfRegisterPage.upOrin, haveOrHaveNotAccount: "Already have account?", 
                 onPresseds: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>pageOfLogin()));},
                 )),
                 
                
              ],
            ),
          ],
        ),
      ), 
                  
   
      
    );
  }
}

class _pagePadding extends StatelessWidget{
  _pagePadding({Key? key, required this.child}): super(key: key);

  final Widget child;

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: _paddingOnly.onlyPadding,
      child: child,
    );
  }
}

class _paddingOnly {
  static final double paddingValue=5;
  static final EdgeInsets onlyPadding =EdgeInsets.only(top:paddingValue, bottom: paddingValue); 
}