import 'package:flutter/material.dart'; 

class haveAccount extends StatelessWidget{
  haveAccount({Key? key, required this.upOrin, required this.haveOrHaveNotAccount, required this.onPresseds}): super(key: key);

  final String upOrin;
  final String haveOrHaveNotAccount;
  final void Function() onPresseds;
  @override 
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        haveAccountText(haveOrHaveNotAccount: haveOrHaveNotAccount),
        signButton(upOrin: upOrin, onPresseds: onPresseds),
      ],
    );
  }
}

class _haveAccountTools{
  static final Color singButtonColor = Colors.orange;
}

class haveAccountText extends StatelessWidget{
  haveAccountText({Key? key, required this.haveOrHaveNotAccount}): super(key: key);

  final String haveOrHaveNotAccount;

  @override 
  Widget build(BuildContext context){
    return Text(
      haveOrHaveNotAccount, 
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class signButton extends StatelessWidget{
  signButton({Key? key, required this.upOrin, required this.onPresseds}): super(key: key);

  final String upOrin;
  final void Function() onPresseds;

  @override 
  Widget build(BuildContext context){
    return TextButton(
      onPressed:  onPresseds ,
      child: Text(
        upOrin, 
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold, 
          color: _haveAccountTools.singButtonColor,
        ),
      ),
    );
  }
}


