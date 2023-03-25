import 'package:contriver_project/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Vendors extends StatelessWidget {
  const Vendors({super.key});
  //for drawer text
  static TextStyle Drawertext = TextStyle(
    color: Colors.blueGrey[800],
    fontFamily: 'Nunito',
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  //for appbar text
  static const TextStyle appBarText = TextStyle(
    color: Color.fromARGB(255, 56, 55, 55),
    fontFamily: 'BonaNova',
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  //for card text
  static const TextStyle cardText = TextStyle(
    fontSize: 18,
    color: Color.fromRGBO(55, 71, 79, 1),
    fontWeight: FontWeight.w600,
    fontFamily: 'Nunito',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Vendors",
            style: appBarText,
          ),
          backgroundColor: appbarColor,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  UniconsLine.paragraph,
                  color: Color.fromARGB(255, 72, 98, 111),
                  size: 24,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        //drawer
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(255, 248, 245, 1),
          width: 260,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  width: 230,
                  height: 450,
                ),
              ),
              //home option
              ListTile(
                leading: Icon(
                  UniconsLine.home_alt,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Home",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
              //1st option
              ListTile(
                leading: Icon(
                  UniconsLine.archive_alt,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Events",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'events_page');
                },
              ),
              //2nd option
              ListTile(
                leading: Icon(
                  UniconsLine.palette,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Packages",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'packages_page');
                },
              ),
              //3rd option
              ListTile(
                leading: Icon(
                  UniconsLine.luggage_cart,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Vendors",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'vendors_page');
                },
              ),
              //4th option
              ListTile(
                leading: Icon(
                  UniconsLine.money_bill,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Expenses",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'expenses_page');
                },
              ),
              //5th option
              ListTile(
                leading: Icon(
                  Icons.person_3_outlined,
                  color: Colors.blueGrey[600],
                ),
                title: Text(
                  "Team members",
                  style: Drawertext,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'team_page');
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg_imgs/1.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                //1st card--->florist
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/florist.jpg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Florists",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //2nd card---->tent house
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/tent.png"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tent House",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //3rd card--->music
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/music.jpg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Musicians/DJ",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //4th card---->lighting
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/light.jpg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lighting",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //5th card---->caterers
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/caterers_2.jpeg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Caterers",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //6th card--->gifting
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/gift_5.jpg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Gifting and Packaging",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //7th card---> dancing group
                Center(
                  child: Card(
                    elevation: 5,
                    color: Colors.pink[50],
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/dance.jpeg"),
                          height: 200,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dancing Groups",
                          style: cardText,
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}
