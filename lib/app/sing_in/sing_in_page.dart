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
            Text('Sing In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
                onPressed: () {print('Button pressed'); },
                child: Text('Sing in with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),
                ),
  //            style: ElevatedButton.styleFrom(
  //              primary: Colors.red,
  //              onPrimary: Colors.yellowAccent
  //            ),
            ),
          ],
      ),
    );
  }
}
