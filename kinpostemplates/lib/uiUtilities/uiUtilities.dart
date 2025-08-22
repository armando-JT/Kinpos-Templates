import 'package:flutter/material.dart';
import 'package:kinpostemplates/componentScreens/components.dart';
import 'package:kinpostemplates/screens/home.dart';
import 'package:kinpostemplates/screens/notifications.dart';
import 'package:kinpostemplates/screens/profile.dart';
import 'package:kinpostemplates/screens/shopping_cart.dart';


const offwhite = Color(0xFFF5F5F5);
const coolEbony = Color(0xFF2C3548);
const ghostWhite = Color(0xFFCFD8DC);
const coolGrey = Color(0xFF808080);
const offblack = Color(0xFF212121);
Color normalText = offblack.withAlpha(200);
const coolPink = Color(0xFFD233AE);
const greyBackground = Color.fromARGB(255, 230, 230, 235);
const alternativeBackground = Color.fromARGB(255, 234, 239, 242);
const goodInfo = Color(0xFFA1E744);

const coolGradient = [
  Color(0xFFff00cc),Color(0xFF333399),
];
const greyGradient = [Color(0xFFABBFD9), Color(0xFF7284A4) ];

const blueGradient = [Color(0xFF28CCF7), Color(0xFF2E5EFE) ];

const successGradient = [Color(0xFF97F139), Color(0xFF31BC41) ];

const orangeGradient = [Color(0xFFFECC40), Color(0xFFFE4743) ];

const redGradient = [Color(0xFFFF677A), Color(0xFFF41713) ];

const whiteGradient = [Color(0xFFFFFFFF), Color(0xFFD9DFE7) ];

const darkGradient = [Color(0xFF434774), Color(0xFF20253A) ];









drawerUI(context) {
  final DrawerRowSpacing = 30.0;
  final DrawerIconSize = 30.0;
  final DrawerIconColor = coolEbony;
  final DrawerIconGradient = [ Colors.white,Colors.white,  ];

  final DrawerCompanyNameStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16
  );

  final DrawerRegularTextStyle = TextStyle(
    fontWeight: FontWeight.w600
  );
  return Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 235)
          ),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                Row(
                  children: [Icon(Icons.account_balance, size: 50,color: DrawerIconColor,),SizedBox(width: 25,), Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Kinpos", style: DrawerCompanyNameStyle,), Text("Corporation", style: DrawerCompanyNameStyle,),],)],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            
                  },
                  child: Row(
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
                        child: Icon(Icons.home, size: DrawerIconSize,color: offwhite,)),
                        
                        SizedBox(width: DrawerRowSpacing,), 
                        
                        Text("Home", style: DrawerRegularTextStyle)],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Components() ));
                  },
                  child: Row(
                    children: [Container(
                                                               padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: DrawerIconGradient,
                            
                            ),
                        ),
                      child: Icon(Icons.format_list_bulleted, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Components", style: DrawerRegularTextStyle)],
                  ),
                ),
                GestureDetector(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCart()));
            
                  },
                  child: Row(
                    children: [Container(
                                                               padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: DrawerIconGradient,
                            
                            ),
                        ),
                      child: Icon(Icons.shopping_cart, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Shopping Cart", style: DrawerRegularTextStyle)],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                  },
                  child: Row(
                    children: [Container(
                                                               padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: DrawerIconGradient,
                            
                            ),
                        ),
                      child: Icon(Icons.switch_access_shortcut, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Rental", style: DrawerRegularTextStyle)],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Row(
                    children: [Container(
                                                               padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: DrawerIconGradient,
                            
                            ),
                        ),
                      child: Icon(Icons.account_box, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Profile", style: DrawerRegularTextStyle)],
                  ),
                ),
                Row(
                  children: [Container(
                                                             padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: DrawerIconGradient,
                          
                          ),
                      ),
                    child: Icon(Icons.construction, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Settings", style: DrawerRegularTextStyle)],
                ),
                Row(
                  children: [Container(
                    
                                                             padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: DrawerIconGradient,
                          
                          ),
                      ),child: Icon(Icons.logout, size: DrawerIconSize,color: DrawerIconColor,)),SizedBox(width: DrawerRowSpacing,), Text("Signout", style: DrawerRegularTextStyle,)],
                ),
              ],
            
            ),
          ),
        ),
      );
}

actionsUI(context) {
  return [ IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));}, icon: Icon(Icons.notifications)) , IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));}, icon: Icon(Icons.person))];
}

