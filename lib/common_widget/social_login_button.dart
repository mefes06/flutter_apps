import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  //final double radius;
  //final double height;
  final Widget buttonIcon;
  final VoidCallback onPressed;

  const SocialLoginButton({super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    //required this.radius,
    //required this.height,
    required this.buttonIcon,
    required this.onPressed});



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor, // Butonun arka plan rengi
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(buttonIcon!=null)...[
              buttonIcon,
              Text(
                buttonText,
                textAlign: TextAlign.center
                ,style: TextStyle(color: textColor),
              ),
              Opacity(opacity: 0,child: buttonIcon,)
            ],

              if(buttonIcon ==null) ...[
                Container(),
                Text(
                  buttonText,
                  textAlign: TextAlign.center
                  ,style: TextStyle(color: textColor),
                ),
                Container(),
              ]
            ]
          ), // Butonun içindeki yazı
        ),
      ),
    );
  }
}
