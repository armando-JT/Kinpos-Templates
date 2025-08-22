import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final mobileWidth = 800.0;
    final isMobile = MediaQuery.of(context).size.width > mobileWidth ? false: true;

    return Scaffold(
      backgroundColor: alternativeBackground,
      appBar: AppBar(
        title: Text("Notifications"),
       ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: mobileWidth),
            child: Column(
              spacing: 15,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: coolGradient,
                                      
                                      ),
                                  ),
                                  child: Icon(Icons.article, size: 25,color: offwhite,)
                                ),
            
                                Row(
                                  children: [
                                    Icon(Icons.alarm,size: 20, color: offblack.withAlpha(80),),
                                    SizedBox(width: 5,),
                                    Text("3h ago", style: TextStyle(color: offblack.withAlpha(150)),)
                                  ],
                                )
                        
                                
                              ],
                            ),
                        
                            SizedBox(height: 10,),
            
                            Text("Learn new things", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: coolEbony),),
            
                            SizedBox(height: 15,),
            
                            Text("Learning new things keeps the mind sharp and opens doors to exciting opportunities.", style: TextStyle( color: offblack.withAlpha(130)),)
                        
                            
                          ],
                        ),
            
                        
                      ],
                    ),
                  ),
                ),
            
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: greyGradient,
                                      
                                      ),
                                  ),
                                  child: Icon(Icons.article, size: 25,color: offwhite,)
                                ),
            
                                Row(
                                  children: [
                                    Icon(Icons.alarm,size: 20, color: offblack.withAlpha(80),),
                                    SizedBox(width: 5,),
                                    Text("10h ago", style: TextStyle(color: offblack.withAlpha(150)),)
                                  ],
                                )
                        
                                
                              ],
                            ),
                        
                            SizedBox(height: 10,),
            
                            Text("Give your best", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: coolEbony),),
            
                            SizedBox(height: 15,),
            
                            Text("Giving your best means putting in full effort and passion, no matter the task.", style: TextStyle( color: offblack.withAlpha(130)),)
                        
                            
                          ],
                        ),
            
                        
                      ],
                    ),
                  ),
                ),
            
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: greyGradient,
                                      
                                      ),
                                  ),
                                  child: Icon(Icons.article, size: 25,color: offwhite,)
                                ),
            
                                Row(
                                  children: [
                                    Icon(Icons.alarm,size: 20, color: offblack.withAlpha(80),),
                                    SizedBox(width: 5,),
                                    Text("12h ago", style: TextStyle(color: offblack.withAlpha(150)),)
                                  ],
                                )
                        
                                
                              ],
                            ),
                        
                            SizedBox(height: 10,),
            
                            Text("Enjoy new opportunities", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: coolEbony),),
            
                            SizedBox(height: 10,),
            
                            Text("Embrace new opportunities with curiosity and joy. Each one brings fresh experiences and unexpected growth.", style: TextStyle( color: offblack.withAlpha(130)),)
                        
                            
                          ],
                        ),
            
                        
                      ],
                    ),
                  ),
                ),
            
              ],
            ),
          ),
        ),
      )
    );
  }
}