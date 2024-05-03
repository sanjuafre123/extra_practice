import 'package:flutter/material.dart';

import 'home/Screen/details_screen.dart';
import 'home/Screen/homescreen.dart';


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => homescreen(),
        '/detail' : (context) => detailscreen(),
        // '/carts' : (context) => cartscreen(),
      },
    );
  }
}




