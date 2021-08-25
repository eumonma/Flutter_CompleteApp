import 'package:complete_app/common_widgets/custom_elevated_button.dart';
import 'package:complete_app/app/sing_in/sign_in_button.dart';
import 'package:complete_app/app/sing_in/social_sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Age of Sigmar')),
        elevation: 4.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200], // color del fondo de la pantalla
    );
  }

  // Prueba Git
  Widget _buildContent() {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 48.0),
            SocialSignInButton(
              assetName: 'images/google-logo.png',
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black87,
              onPressed: () {print('Button pressed'); }
            ),
            SizedBox(height: 8.0),
            SocialSignInButton(
                assetName: 'images/facebook-logo.png',
                text: 'Sign in with Facebook',
                color: Color(0xFF334D92),
                textColor: Colors.white,
                onPressed: () {print('Button pressed'); },
            ),
            SizedBox(height: 8.0),
            SignInButton(
                text: 'Sign in with email',
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () {print('Button pressed'); },
            ),
            SizedBox(height: 8.0),
            Text('or',
              style: TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.center,),
            SizedBox(height: 8.0),
            SignInButton(
                text: 'Go anonymous',
                color: Color(0xFFDCE755),
                textColor: Colors.black,
                onPressed: () {print('Button pressed'); },
            ),
            //Image.asset('images/facebook-logo.png'),
          ],
      ),
    );
  }
}




