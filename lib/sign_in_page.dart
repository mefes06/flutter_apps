import 'package:flutter/material.dart';
import 'package:flutter_apps/common_widget/social_login_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Net Chat"),
        elevation:0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        //color: Colors.red,
        padding: const EdgeInsets.all(16.0),
        child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              "Oturum Açın",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),
          ),
          const SizedBox(
            height: 8,
          ),
          SocialLoginButton(
              buttonText: "Gmail ile Giriş Yap",
              buttonColor: Colors.white,
              textColor: Colors.black87,
              buttonIcon: Image.asset("image/google.png"),
              onPressed: (){}),
          SocialLoginButton(
              buttonText: "Facebook ile Giriş Yap",
              buttonColor: Color(0xFF334D92),
              textColor: Colors.white,
              buttonIcon: Image.asset("image/facebook.png"),
              onPressed: (){}),
          SocialLoginButton(
              buttonText: "Email ve Şifre ile Giriş Yap",
              buttonColor: Colors.teal,
              textColor: Colors.white,
              buttonIcon: Icon(Icons.email),
              onPressed: (){}),

        ],
      ),
    )
    );
  }
}

