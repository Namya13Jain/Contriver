import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CorporateEvents extends StatelessWidget {
  const CorporateEvents({super.key});
  //for text of drawer
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
  //for heading of package
  static TextStyle headtext = TextStyle(
    color: Colors.blueGrey[800],
    fontFamily: 'Nunito',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  //for body of package
  static TextStyle bodytext = TextStyle(
    color: Colors.blueGrey[800],
    fontFamily: 'Nunito',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Corporate Events",
          style: appBarText,
        ),
        backgroundColor: const Color.fromARGB(255, 249, 243, 243),
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
              image: AssetImage("assets/bg_imgs/20.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                //1st package
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 300,
                  height: 135,
                  decoration: BoxDecoration(
                      //color: Colors.orange,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 247, 176, 70),
                          Color.fromARGB(255, 236, 190, 120),
                          Color.fromARGB(255, 236, 211, 175),
                          Color.fromARGB(255, 95, 230, 209),
                          Color.fromARGB(255, 131, 179, 171),
                          Color.fromARGB(255, 71, 149, 137),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(248, 187, 208, 1),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10, bottom: 5),
                        child: Text(
                          "Diamond Package",
                          style: headtext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Budget: Rs.70,000-80,000",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Gathering: 150 people",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Everything included",
                          style: bodytext,
                        ),
                      ),
                    ],
                  ),
                ),
                //2nd package
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 300,
                  height: 135,
                  decoration: BoxDecoration(
                      //color: Colors.orange,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 247, 176, 70),
                          Color.fromARGB(255, 236, 190, 120),
                          Color.fromARGB(255, 236, 211, 175),
                          Color.fromARGB(255, 95, 230, 209),
                          Color.fromARGB(255, 131, 179, 171),
                          Color.fromARGB(255, 71, 149, 137),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(248, 187, 208, 1),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10, bottom: 5),
                        child: Text(
                          "Golden Package",
                          style: headtext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Budget: Rs.50,000-60,000",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Gathering: 100 people",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Everything included",
                          style: bodytext,
                        ),
                      ),
                    ],
                  ),
                ),
                //3rd package
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 300,
                  height: 135,
                  decoration: BoxDecoration(
                      //color: Colors.orange,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 247, 176, 70),
                          Color.fromARGB(255, 236, 190, 120),
                          Color.fromARGB(255, 236, 211, 175),
                          Color.fromARGB(255, 95, 230, 209),
                          Color.fromARGB(255, 131, 179, 171),
                          Color.fromARGB(255, 71, 149, 137),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(248, 187, 208, 1),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10, bottom: 5),
                        child: Text(
                          "Platinum Package",
                          style: headtext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Budget: Rs.40,000-450,000",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Gathering: 100 people",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Catering not included",
                          style: bodytext,
                        ),
                      ),
                    ],
                  ),
                ),
                //low budget packages
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 300,
                  height: 135,
                  decoration: BoxDecoration(
                      //color: Colors.orange,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 247, 176, 70),
                          Color.fromARGB(255, 236, 190, 120),
                          Color.fromARGB(255, 236, 211, 175),
                          Color.fromARGB(255, 95, 230, 209),
                          Color.fromARGB(255, 131, 179, 171),
                          Color.fromARGB(255, 71, 149, 137),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(248, 187, 208, 1),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10, bottom: 5),
                        child: Text(
                          "Budget Friendly Package",
                          style: headtext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Budget: Rs.10,000-15,000",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Gathering: 100 people",
                          style: bodytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                        child: Text(
                          "Minimal decoration with catering",
                          style: bodytext,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
