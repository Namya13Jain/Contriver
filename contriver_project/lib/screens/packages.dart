import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key});
  //for text of the buttons
  static const TextStyle buttonText = TextStyle(
    color: Color.fromRGBO(55, 71, 79, 1),
    fontFamily: 'Nunito',
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  //for appbar text
  static const TextStyle appBarText = TextStyle(
    color: Color.fromARGB(255, 56, 55, 55),
    fontFamily: 'BonaNova',
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  //for drawer text
  static TextStyle Drawertext = TextStyle(
    color: Colors.blueGrey[800],
    fontFamily: 'Nunito',
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Packages',
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
              image: AssetImage("assets/bg_imgs/4.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                //First Option
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'wedding');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Color.fromARGB(255, 247, 166, 193),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 216, 247, 1),
                            Color.fromRGBO(240, 182, 229, 1),
                            Color.fromRGBO(255, 236, 251, 1),
                            Color.fromRGBO(255, 255, 252, 1),
                            Color.fromRGBO(221, 232, 255, 1),
                            Color.fromRGBO(196, 221, 254, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(248, 187, 208, 1),
                            blurRadius: 10,
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      "Weddings",
                      style: buttonText,
                    )),
                  ),
                ),
                //2nd option
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'birthday');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Color.fromARGB(255, 247, 166, 193),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 216, 247, 1),
                            Color.fromRGBO(240, 182, 229, 1),
                            Color.fromRGBO(255, 236, 251, 1),
                            Color.fromRGBO(255, 255, 252, 1),
                            Color.fromRGBO(221, 232, 255, 1),
                            Color.fromRGBO(196, 221, 254, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(248, 187, 208, 1),
                            blurRadius: 10,
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      "Birthday Parties",
                      style: buttonText,
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'get_together');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Color.fromARGB(255, 247, 166, 193),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 216, 247, 1),
                            Color.fromRGBO(240, 182, 229, 1),
                            Color.fromRGBO(255, 236, 251, 1),
                            Color.fromRGBO(255, 255, 252, 1),
                            Color.fromRGBO(221, 232, 255, 1),
                            Color.fromRGBO(196, 221, 254, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(248, 187, 208, 1),
                            blurRadius: 10,
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      "Family Get Togethers",
                      style: buttonText,
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'corporate');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Color.fromARGB(255, 247, 166, 193),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(254, 216, 247, 1),
                            Color.fromRGBO(240, 182, 229, 1),
                            Color.fromRGBO(255, 236, 251, 1),
                            Color.fromRGBO(255, 255, 252, 1),
                            Color.fromRGBO(221, 232, 255, 1),
                            Color.fromRGBO(196, 221, 254, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          tileMode: TileMode.mirror,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(248, 187, 208, 1),
                            blurRadius: 10,
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      "Corporate Events",
                      style: buttonText,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
