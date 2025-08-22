

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinpostemplates/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

// 1. Define colors at top of file (or import)
const offwhite = Color(0xFFF5F5F5);
const coolEbony = Color(0xFF2C3548);
const ghostWhite = Color(0xFFCFD8DC);
const coolGrey = Color(0xFF808080);
const offblack = Color(0xFF212121);
Color normalText = offblack.withAlpha(200);
const coolPink = Color(0xFFD233AE);
const greyBackground = Color.fromARGB(255, 230, 230, 235);

const coolGradient = [
  Color(0xFFff00cc),Color(0xFF333399),
  ];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      WidgetsFlutterBinding.ensureInitialized(); //important

    // 2. Get screen width safely
    final screenWidth = MediaQuery.of(context).size.width;


    return MaterialApp(
      title: 'Kinpos Template',
      debugShowCheckedModeBanner: false,
      theme: _buildLightTheme(screenWidth),
      darkTheme: _buildDarkTheme(screenWidth),
      home: const MyHomePage(),
    );
  }

  // 3. Unified button height and border width
  static const _buttonHeight = 45.0;
  static const _borderWidth = 1.0;

  // 4. Light Theme
  ThemeData _buildLightTheme(double screenWidth) {
    return ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: offwhite,
        foregroundColor: coolGrey,
      ),
      scaffoldBackgroundColor: offwhite,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      textTheme: _buildTextTheme(offblack),
      elevatedButtonTheme: _buildElevatedButtonTheme(offblack, screenWidth),
      textButtonTheme: _buildTextButtonTheme(offblack, screenWidth),
      iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),
      inputDecorationTheme: InputDecorationTheme(),
      iconTheme: IconThemeData(color: offwhite),
      cardTheme: CardThemeData(elevation: 8)


    );
  }

  // 5. Dark Theme
  ThemeData _buildDarkTheme(double screenWidth) {
    return ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: offwhite,
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      textTheme: _buildTextTheme(offwhite),
      elevatedButtonTheme: _buildElevatedButtonTheme(offwhite, screenWidth),
      textButtonTheme: _buildTextButtonTheme(offwhite, screenWidth),
      iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),
      cardTheme: CardThemeData(elevation: 8)
    );
  }

  TextTheme _buildTextTheme(Color textColor) {
    return ThemeData.light().textTheme.apply(
          bodyColor: textColor,
          displayColor: textColor,
          fontFamily: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            
          ).fontFamily,
        );
  }

  ElevatedButtonThemeData _buildElevatedButtonTheme(Color borderColor, double screenWidth) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor, width: _borderWidth),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        fixedSize: Size(
          min(max(screenWidth * 0.9, 200), 350),
          _buttonHeight,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: borderColor,
      ),
    );
  }

  TextButtonThemeData _buildTextButtonTheme(Color borderColor, double screenWidth) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        side: BorderSide(color: borderColor, width: _borderWidth),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        foregroundColor: borderColor,
        
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: IntroPage(),
    );
  }
}
