import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();


}

class _ProfileState extends State<Profile> {

  final objectTitleStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  final objectDescStyle = TextStyle(fontSize: 16,color: offblack.withAlpha(170),);

final nameList = [
  "Weekend getaway with friends",
  "Upcoming concert adventures",
  "Discover hidden city gems",
  "Mountain trail exploration",
  "Beachside camping trip",
  "Local food tour journey",
  "Sunset photography walk",
  "Vinyl record shopping spree",
  "National park roadtrip",
  "Rooftop bar hopping night"
];



  final ProfileUserNameTextStyle = TextStyle(color: offwhite, fontSize: 20);
  final ProfileUserOccupationStyle = TextStyle(color: offwhite.withAlpha(150), fontSize: 18, );
  final ProfileUserImageSize = 60.0;
  final ProfileUserDescriptionTextStyle = TextStyle(color: coolEbony.withAlpha(150));
  final ProfileUserDescriptionTitleTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.bold);

Widget _buildStatColumn(String value, String label) {
  return SizedBox(
    width: 80, 
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Text(value, style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )),
        Text(label, style: TextStyle(
          fontSize: 14,
        )),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final mobileWidth = 800.0;
    final isMobile = MediaQuery.of(context).size.width > mobileWidth ? false: true;


    return Scaffold(
      backgroundColor: alternativeBackground,
      
      appBar: AppBar(
       ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: mobileWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    
                    padding: EdgeInsets.all(30),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: coolGradient),
                      borderRadius: BorderRadius.circular(10),
                    ),
              
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Icon(Icons.account_box_rounded, size: ProfileUserImageSize,),
                        Text("User Name", style: ProfileUserNameTextStyle,),
                        Text("Occupation", style: ProfileUserOccupationStyle,),
              
                        Transform.translate(
                          offset: Offset(0, 65),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: mobileWidth /2),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.white.withAlpha(240),
                                  Colors.white.withAlpha(240),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(16),
                              
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 30,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                                child: Center(
                                  child: Padding(
                                    
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Better balanced spacing
                                      children: [
                                        _buildStatColumn("142", "Downloads"),
                                        _buildStatColumn("27", "Uploads"), 
                                        _buildStatColumn("16K", "Views"),
                                      ],
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
              
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 65,),
                  Text("Description", style: ProfileUserDescriptionTitleTextStyle,),
                  SizedBox(height: 20,),
                  Text("Creative problem-solver who loves building intuitive apps and exploring design trends. By day, a digital artist and coffee enthusiast blending aesthetics with functionality; by night, an open-source contributor and mentor. When offline, you’ll find them hiking mountain trails or sketching new ideas.", style: ProfileUserDescriptionTextStyle,),
                  SizedBox(height: 20,),

                  Text("Last visits", style: ProfileUserDescriptionTitleTextStyle,),
                  
                  SizedBox(height: 20,),

                  ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: mobileWidth),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250,
                      childAspectRatio: 1.2,
                      
                      crossAxisCount: isMobile ? 2 : 4,
                      mainAxisSpacing: 16,
                          
                          
                      crossAxisSpacing: 32,
                      ), 
                      
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Image.network(
                                  "https://picsum.photos/id/${458 + index}/4608/3072",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(nameList[index], maxLines: 2,style: objectDescStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis, // Shows "..." at truncation
                            )),
                            SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'View offer',
                                  style: objectDescStyle.copyWith(
                                    color: Color(0xFFff00cc),
                                    fontSize: 14
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFff00cc),
                                  size: 14,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                    }),
                ),

                SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}