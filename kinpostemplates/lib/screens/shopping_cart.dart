import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {

    const textStyleCartItemTitle = TextStyle(fontWeight: FontWeight.bold);
    final textStyleCartItemDesc = TextStyle(color: offblack.withAlpha(200));
    const textSTOCK = TextStyle(color: goodInfo, fontWeight: FontWeight.bold);
    const priceTagStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold,);
    const textStyleGreyButtons = TextStyle(fontWeight: FontWeight.bold, color: offwhite);

    const imageList = ["https://picsum.photos/id/157/4608/3072", "https://picsum.photos/id/160/4608/3072" , "https://picsum.photos/id/201/4608/3072", "https://picsum.photos/id/225/4608/3072"];
    const nameList = ["Skateboard", "Cellphone", "Glasses", "Tea set"];

    final screenWidth = MediaQuery.of(context).size.width;
    final mobileWidth = 800.0;
    final isMobile = MediaQuery.of(context).size.width > mobileWidth ? false: true;





    return Scaffold(
      backgroundColor: alternativeBackground,
      appBar: AppBar(title: Text("Shopping Cart"),),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: mobileWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  spacing: 30,
                  children: List.generate(4, (index) {
                    return Card(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadiusGeometry.circular(12),
                                      child: Container(
                                        width: 100,
                                        height: 105,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Image.network(imageList[index], fit: BoxFit.cover,),
                                      
                                      ),
                                    ),
                            
                                    SizedBox(width: 15,),
                            
                                    SizedBox(
                                      width: 180,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(nameList[index], style: textStyleCartItemTitle,),
                                          Text("Lightweight, durable skateboard for smooth rides.", style: textStyleCartItemDesc,),
                                          Text("IN STOCK", style: textSTOCK,)
                            
                                      
                                        ],
                                      ),
                                    ),
                                    IconButton(onPressed: () {}, icon: Icon(Icons.close, color: offblack,))
                                    
                                  ],
                                ),
                            
                                SizedBox(height: 30,),
                            
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                    
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              gradient: LinearGradient(
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.topRight,
                                                colors: greyGradient,
                                                
                                                ),
                                            ),
                                            child: Row(
                                              children: [
                                                Text("1", style: textStyleGreyButtons,),
                                                SizedBox(width: 5,),
                                                Icon(Icons.arrow_drop_down)
                                              ],
                                            )
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        GestureDetector(
                                          onTap: () {
                                            
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                    
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: greyGradient,
                                                
                                                ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("G", style: textStyleGreyButtons,),
                                                SizedBox(width: 5,),
                                                Icon(Icons.arrow_drop_down)
                                              ],
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                            
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
                                          '\$60',
                                          style: priceTagStyle,
                                        ),
                                      ),
                                  ],
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
            
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Car Subtotal: (4 items) ", style: textStyleCartItemTitle,),
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
                              '\$240',
                              style: priceTagStyle,
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Shoppers who shopped for items in your cart also shopped for: ", style: textStyleCartItemDesc.copyWith(color: offblack.withAlpha(100), fontWeight: FontWeight.bold),),
                    ],
                  ),
                  ),
            
                
                SizedBox(height: 20,),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Card(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(12),
                                  child: Container(
                                    width: 150,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Image.network("https://picsum.photos/id/250/4608/3072", fit: BoxFit.cover,),
                                  
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Camera", style: textStyleCartItemDesc.copyWith(fontWeight: FontWeight.bold,),),
                                SizedBox(height: 15,),
                                Text(
                                  '\$240',
                                  style: priceTagStyle.copyWith(color: Color(0xFFff00cc)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: greyGradient,
                            
                            ),
                        ),
                        child: Text("   ADD TO CART  ", style: textStyleGreyButtons,)
                      ),
                    ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(12),
                                  child: Container(
                                    width: 150,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Image.network("https://picsum.photos/id/312/4608/3072", fit: BoxFit.cover,),
                                  
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Honey Kit", style: textStyleCartItemDesc.copyWith(fontWeight: FontWeight.bold,),),
                                SizedBox(height: 15,),
                                Text(
                                  '\$240',
                                  style: priceTagStyle.copyWith(color: Color(0xFFff00cc)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
            
            
                      GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: greyGradient,
                            
                            ),
                        ),
                        child: Text("  ADD TO CART   ", style: textStyleGreyButtons,)
                      ),
                    ),
                      ],
                    )
                  ],
                ),
            
                SizedBox(height: 40,),
            
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
                        child: Center(child: Text("PROCEED TO CHECKOUT", style: TextStyle(fontWeight: FontWeight.w900, color: offwhite),))
                      ),
                    ),
                  ],
                )
                
              ],
            ),
          ),
        ),
      )
    );
  }
}