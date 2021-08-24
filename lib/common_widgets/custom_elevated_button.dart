import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    required this.child,
    required this.color,
    this.borderRadius: 2.0,
    this.height: 50.0,
    required this.onPressed,
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
            primary: color,    // Color de fondo del botón
//          onPrimary: Colors.yellowAccent  // Mascara de animación al hacer Click
            elevation: 10,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(borderRadius), // hace como una elipse
//                  borderRadius: new BorderRadius.all(Radius.circular(10.0)), // Otra forma para conseguir lo mismo que la anterior
                side: BorderSide(
                  color: Colors.red,
                ),
            ),
//          fixedSize: Size.fromHeight(15.0)
        ),
      ),
    );
  }
}
