import 'package:complete_app/common_widgets/custom_elevated_button.dart';
import 'package:complete_app/app/sing_in/sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 8.0),
            SignInButton(
              text: 'Sign in Google',
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {print('Button pressed'); }
            ),
            SizedBox(height: 8.0),
            CustomElevatedButton(
              child: Text('Sing in with Facebook',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow,
                ),
              ),
              color: Colors.indigo,
              borderRadius: 4.0,
              onPressed: () {print('Button pressed'); },
            ),
          ],
      ),
    );
  }
}




