import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../model/bn_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';
import 'home_screen.dart';

class AppScreen extends StatefulWidget{
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen>{
  late int _currentIndex = 0;
  final List<BnScreen> _bnScreen = <BnScreen>[
    BnScreen(widget: HomeScreen(), title: 'home'),
    BnScreen(widget: SearchScreen(), title: 'search'),
    BnScreen(widget: HomeScreen(), title: 'home'),
    BnScreen(widget: HomeScreen(), title: 'home'),
    BnScreen(widget: ProfileScreen(), title: 'profile'),
  ];


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.black),

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            activeIcon: Icon(Iconsax.home, color: Colors.black),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.search_favorite),
            activeIcon: Icon(Iconsax.search_favorite, color: Colors.black),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.add_circle),
            activeIcon: Icon(Iconsax.add_circle, color: Color.fromRGBO( 96 ,88 ,117, 1)),
            label: '',
            tooltip: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            activeIcon: Icon(Iconsax.message, color: Colors.black),
            label: '',
            tooltip: '',
          ),


          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle),
            activeIcon: Icon(Iconsax.profile_circle, color: Colors.black),
            label: '',
            tooltip: '',
          ),
        ],
      ),
      body: _bnScreen[_currentIndex].widget,
    );

  }


}
