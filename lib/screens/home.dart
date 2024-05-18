import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/common/Widgets/carousel_item.dart';
import 'package:ecomapp/screens/cart.dart';
import 'package:ecomapp/screens/profile.dart';
import 'package:ecomapp/screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentvalue = 0;

  var screens = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[200],
        title: Text("Home Screen"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "About",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Services",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Contact",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //first row
          Container(
            // color: Colors.red,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommend",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/user.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),

          CarouselSlider(
            items: [
              Carousel_item(
                img: "assets/images/lam1.jpg",
              ),
              Carousel_item(
                img: "assets/images/lam2.jpg",
              ),
              Carousel_item(
                img: "assets/images/lam3.jpg",
              )
            ],
            options: CarouselOptions(
              autoPlay: true,
              // autoPlayAnimationDuration: Duration(seconds: 1),
            ),
          ),

          Text(
            "sdasdasdsadsa"
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentvalue = value;
            });
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => screens[value],
              ),
            );
          },
          currentIndex: currentvalue,
          backgroundColor: Colors.green[200],
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Colors.purple),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart_fill), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
