import 'package:flutter/material.dart';
import 'dart:async';  // Para o Timer

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer para redirecionar após o tempo da splash
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'lib/assets/images/SplashScreenGIF.gif',  // Coloque o caminho correto do GIF aqui
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
