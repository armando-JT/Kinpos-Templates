import 'package:flutter/material.dart';
import 'package:kinpostemplates/screens/profile.dart';
import 'package:kinpostemplates/screens/single_object_page.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var gradientsForCategories = [[
    Color(0xFFf80759),  // #f80759
    Color(0xFFbc4e9c),  // #bc4e9c
  ] , [
    Color(0xFF0083B0), // #0083B0
    Color(0xFF00B4DB), // #00B4DB
  ], [
    Color(0xFFF37335),
    Color(0xFFFDC830),
  ], [

    Color(0xFF414345), // #414345
    Color(0xFF232526), // #232526
  ]];


  List<String> categoryName = ["Flights" , "Hotels", "Trains", "More"];
  List<int> imagesID = [25 , 82, 106, 152, 215];

  List<IconData> categoryIcons = [Icons.flight, Icons.hotel, Icons.train, Icons.category ];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final mobileWidth = 800.0;
    final isMobile = MediaQuery.of(context).size.width > mobileWidth ? false: true;

    return Scaffold(
      drawer: drawerUI(context),
      appBar: AppBar(leading: Builder(builder: (context) {
        return IconButton(onPressed: () {Scaffold.of(context).openDrawer();}, icon: Icon(Icons.menu));
      }),
      actions: actionsUI(context)
       ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: mobileWidth),
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: coolGrey, fontSize: 16),
                    prefixIcon: Icon(Icons.search, color: offblack,),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.5,color: coolGrey.withAlpha(100)),borderRadius: BorderRadius.circular(10)),
                  ),
                  
                  
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: screenWidth ,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 235)
              ),
              child: Column(
                children: [
              
                  SizedBox(height: 30,),
                  
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: mobileWidth),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(4, (index) {
                                  
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: gradientsForCategories[index],
                              ),
                              boxShadow: [
                                
                                BoxShadow(
                                  color: gradientsForCategories[index][0].withAlpha(60), // Shadow color
                                  blurRadius: 10, // Soften the shadow
                                  spreadRadius: 2, // Extend the shadow
                                  offset: Offset(0, 4), // Shadow position (x,y)
                                ),
                                BoxShadow(
                                  color: gradientsForCategories[index][1].withAlpha(60),
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                ),
                                
                              ],
                              borderRadius: BorderRadius.circular(12)
                              
                            
                              ),
                              child: Icon(categoryIcons[index], size: 30,)),
                              SizedBox(height: 15,),
                              Text(categoryName[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        );
                      })
                        
                      ,
                    ),
                  ),
                  SizedBox(height: 50,),
              
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: mobileWidth),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cool places for you", style: TextStyle(color: normalText,fontSize: 16, fontWeight: FontWeight.bold),),
                        TextButton(
                          style: TextButton.styleFrom(
                            side: BorderSide(color: Colors.transparent, width: 0),
                            foregroundColor: Color(0xFFD233AE)
                                  
                          ),
                          onPressed: () {} , child: Text("View All", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
              
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: mobileWidth),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                    
                        crossAxisCount: isMobile ? 1 : 2,
                        mainAxisExtent: 300, // Set fixed height for each item
                      ), 
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SingleObjectPage(id: imagesID[index],)));
                          },
                          child: Container(
                            
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            color: offwhite,
                            borderRadius: BorderRadius.circular(12)
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      decoration: BoxDecoration(
                                      ),
                                      width: double.infinity, // Full width
                                      height: 150,
                                      child: Image.network("https://picsum.photos/id/${imagesID[index]}/4608/3072", fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: coolGradient,
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      'Top Choices',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("Cool place to stay at" ,style: TextStyle(color: normalText.withAlpha(180),fontSize: 16,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            
                              
                              Row(
                                children: [
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: coolGradient,
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(bounds);
                                    },
                                    child: Icon(Icons.location_city, size: 22),
                                  ),
                                  SizedBox(width: 5,),
                            
                                  Text("City, Country", style: TextStyle(color: normalText, fontWeight: FontWeight.w900),),
                                  SizedBox(width: 10,),
                            
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: coolGradient,
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(bounds);
                                    },
                                    child: Icon(Icons.star, size: 22),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("4.5", style: TextStyle(color: normalText,  fontWeight: FontWeight.w900),)
                                ],
                              )
                            
                            
                            ],
                                              ),
                                            ),
                        );
                      })
                    ),
                  
              
                  
              
                ],
              ),
            )

            
          ],
        ),
      ),
    );
  }
}