import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen/shared/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarterIT',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: const SplashScreen(),
    );
  }
}