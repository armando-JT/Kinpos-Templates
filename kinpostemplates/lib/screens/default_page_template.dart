import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
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
      
      body: Container()
    );
  }
}