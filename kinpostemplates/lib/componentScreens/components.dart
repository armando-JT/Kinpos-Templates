import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiComponents.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;


        
    return Scaffold(
      backgroundColor: alternativeBackground,
      appBar: AppBar(),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          spacing: 25,
          children: [
            Text("Buttons"),
            gradientButton("PRIMARY", double.infinity, coolGradient),
            gradientButton("SECONDARY", double.infinity, greyGradient),
            gradientButton("INFO", double.infinity, blueGradient),
            gradientButton("SUCCESS", double.infinity, successGradient),
            gradientButton("WARNING", double.infinity, orangeGradient),
            gradientButton("DANGER", double.infinity, redGradient),
            gradientButton("LIGHT", double.infinity, whiteGradient),
            gradientButton("DARK", double.infinity, darkGradient),

            Text("Cards"),
            Wrap(
              spacing: 16,
              children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: StoreCard(imageLink: 'https://picsum.photos/id/25/4608/3072')
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: StoreCard(imageLink: 'https://picsum.photos/id/25/4608/3072'),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: StoreCard(imageLink: 'https://picsum.photos/id/25/4608/3072'),
              ),

              ],
            ),

            
            ShoppingCard(
              imageLink: 'https://picsum.photos/id/157/4608/3072',
              title: 'Skateboard',
              description: 'Lightweight, durable skateboard for smooth rides.',
              inStock: true,
            ),

            Wrap(
              spacing: 16,
              children: [
                ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: SmallCard(
                  imageLink: 'https://picsum.photos/id/290/4608/3072',
                  title: 'Roadtrip with a few friends',
                ),

            ),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: SmallCard(
                  imageLink: 'https://picsum.photos/id/290/4608/3072',
                  title: 'Roadtrip with a few friends',
                ),

            ),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: SmallCard(
                  imageLink: 'https://picsum.photos/id/290/4608/3072',
                  title: 'Roadtrip with a few friends',
                ),

            ),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child:
                SmallCard(
                  imageLink: 'https://picsum.photos/id/290/4608/3072',
                  title: 'Roadtrip with a few friends',
                )

            ),
              ],
            ),


            

            Text("Text"),

            GradientText(
              text: 'Gradient Text',
              fontSize: 24,
            )
            

                
          ],
        ),
      )
    );
  }
}