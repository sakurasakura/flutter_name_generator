import 'package:flutter/material.dart';
import 'package:flutter_name_generator/constants/colors.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    var navigationRail = LayoutBuilder(
      builder: (context,constraint) {
        return NavigationRail(
          extended: constraint.maxWidth>=150,
          useIndicator: true,
          indicatorColor: mInicatorColor,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(Icons.generating_tokens,color: Colors.black,), label: Text('Generator',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
              NavigationRailDestination(
                  icon: Icon(Icons.favorite,color: Colors.black,), label: Text('Favorite',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: (value){
            setState(() {
              selectedIndex=value;
            });
            },);
      }
    );
    var safeArea = SafeArea(child: Scaffold(
      body: Row(
        children: [
          Expanded(child: navigationRail, flex: 1,),
          Expanded(child: buildPage(), flex: 4,),
        ],
      ),
    ));
    return safeArea;
  }
  Widget buildPage(){
    Container co1= Container(
      color: mBackgroundColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A COOL idea for naming:', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
           // Container(child: ,)
          ],
    ),
    );
    Container co2= Container(
      color: mBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Favorite page'),
        ],
      ),
    );
    switch(selectedIndex){
      case 0: return co1;
      case 1: return co2;
    }
    return Placeholder();
  }
}
