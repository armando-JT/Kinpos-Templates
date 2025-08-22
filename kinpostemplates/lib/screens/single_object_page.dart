import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class SingleObjectPage extends StatefulWidget {
  final int id; 

  const SingleObjectPage({
    super.key,
    required this.id,
  });

  @override
  State<SingleObjectPage> createState() => _SingleobjectpageState();
}

class _SingleobjectpageState extends State<SingleObjectPage> {

  final objectTitleStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  final objectDescStyle = TextStyle(fontSize: 16,color: offblack.withAlpha(170),);

  final objectTitle2Style = TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: offblack.withAlpha(200));

  final nameList = ["Roadtrip with a few friends", "Music festivals coming soon", "Explore the city", "Go outside hiking"];



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final mobileWidth = 800.0;
    final isMobile = MediaQuery.of(context).size.width > mobileWidth ? false: true;

    return Scaffold(
      backgroundColor: alternativeBackground,
      appBar: AppBar(actions: actionsUI(context)
       ),
      
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: mobileWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 15,
                    children: List.generate(4, (index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: BoxDecoration(
                          ),

                          width: 400,
                          height: 200,
                          child: Image.network(index > 0 ? "https://picsum.photos/id/${widget.id + index}/4608/3072" :"https://picsum.photos/id/${widget.id}/4608/3072", fit: BoxFit.cover,),
                        ),
                      );
                    }),
                  ),
                ),
            
                SizedBox(height: 10,),
            
                Row(
                  children: [
                    Text("Room  |  1 Guest  |  Kitchen", style: objectDescStyle,),
                  ],
                ),
            
                SizedBox(height: 10,),
            
                Row(
                  children: [
                    Text("Single room in Center", style: objectTitleStyle,)
                  ],
                ),
                SizedBox(height: 10,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: mobileWidth / 2
                    ),
                  child: Text("The room is small and square, with plain white walls and a single dim light flickering overhead.", style: objectDescStyle,)),
            
                SizedBox(height: 25,),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: screenWidth - 40,
                        constraints: BoxConstraints(maxWidth: 300),
                        height: 50 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: coolGradient,
                            
                            ),
                        ),
                        child: Center(child: Text("CHECK AVAILABILITY", style: TextStyle(fontWeight: FontWeight.w900, color: offwhite),))
                      ),
                    ),
                  ],
                ),
            
                SizedBox(height: 30,),
            
            
                Text("You may also be interested in:", style: objectTitle2Style,),
                SizedBox(height: 15,),
            
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
                                  "https://picsum.photos/id/${313 + index}/4608/3072",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(nameList[index],maxLines: 2, style: objectDescStyle.copyWith(
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
                )
            
            
            
            
                
              ],
            ),
          ),
        ),
      )
    );
  }
}