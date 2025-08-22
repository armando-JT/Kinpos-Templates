import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kinpostemplates/main.dart';
import 'package:kinpostemplates/screens/home.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


  @override
  Widget build(BuildContext context) {
    Color offwhite = Color(0xFFFAF9F6);

    double screenWidth = MediaQuery.of(context).size.width;
    var isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage( isDarkMode ? "assets/blackBG.jpeg" : "assets/3183bcbc-91e7-46ff-8562-5140da604e25.jpg" ) , fit: BoxFit.fill)
      ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Icon(Icons.account_balance,color: coolEbony, size: 40,),
              Text("Kinpos Corporation", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              
            ],
          ),
          Text("Kinpos Store", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          
          
      
          Column(
            spacing: 35,
            children: [
              Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Icon(Icons.apple,color: coolEbony, size: 55,),
                    Text("IOS"),

                ],
              ),

              SizedBox(width: 25,),


              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.android,color: coolEbony, size: 55,),
                  SizedBox(width: 5,),
                  Text("Android"),
                ],
              ),
              
            ],
          ),

              Column(
                children: [
                  isDarkMode? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
              
                              Colors.white.withAlpha(30),
                              Colors.white.withAlpha(50),
              
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ElevatedButton(onPressed: () {}, child: Text("Option 1")),
                      ),
                    ),
                  ): TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(
                      min(max(screenWidth * 0.9, 200), 350),
                      45,
                    )
                    ),
                    onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
                  }, child: Text("Enter"))
              
                ],
              ),
            ],
          ),
          
      
        ],
      ),

    ),
    );
  }

}