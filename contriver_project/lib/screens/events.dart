import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:contriver_project/constants/colors.dart';
import '../constants/fonts_styles.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Events",
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
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_imgs/1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(),
        ),
      ),
    );
  }
}
