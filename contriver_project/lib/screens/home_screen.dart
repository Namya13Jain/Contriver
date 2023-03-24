import 'package:contriver_project/screens/events.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const TextStyle Cardtext = TextStyle(
    color: Color.fromARGB(255, 56, 55, 55),
    fontFamily: 'BonaNova',
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
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
        title: const Image(
          image: AssetImage("assets/images/logo_bg.png"),
          height: 65,
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
      //crousel started
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_imgs/1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/11.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //2nd Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/16_f.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //3rd Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/9_f.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/13_f.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 250.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 400),
                viewportFraction: 0.8,
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Upcoming Events",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Dancing',
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                    //1st event
                    Container(
                      height: 100,
                      width: 250,
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'events_page');
                        },
                        child: Card(
                          elevation: 20,
                          color: Colors.red[100],
                          //details of the event in short
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12.0, top: 10),
                                child: Text(
                                  "Date: 10 April,2023",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                ),
                                child: Text(
                                  "Category: Corporate event",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.0,
                                ),
                                child: Text(
                                  "Incharge: Mr. Aman Gupta",
                                  style: Cardtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //2nd event
                    Container(
                      height: 100,
                      width: 250,
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'events_page');
                        },
                        child: Card(
                          elevation: 20,
                          color: Colors.red[100],
                          //details of the event in short
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12.0, top: 10),
                                child: Text(
                                  "Date: 12 April,2023",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                ),
                                child: Text(
                                  "Category: Wedding",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.0,
                                ),
                                child: Text(
                                  "Incharge: Miss Tanya",
                                  style: Cardtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //3rd event
                    Container(
                      height: 100,
                      width: 250,
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'events_page');
                        },
                        child: Card(
                          elevation: 20,
                          color: Colors.red[100],
                          //details of the event in short
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12.0, top: 10),
                                child: Text(
                                  "Date: 20 April,2023",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                ),
                                child: Text(
                                  "Category: Wedding",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.0,
                                ),
                                child: Text(
                                  "Incharge: Mr. Samarth Singh",
                                  style: Cardtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //4th event
                    Container(
                      height: 100,
                      width: 250,
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'events_page');
                        },
                        child: Card(
                          elevation: 20,
                          color: Colors.red[100],
                          //details of the event in short
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12.0, top: 10),
                                child: Text(
                                  "Date: 1 May,2023",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12,
                                ),
                                child: Text(
                                  "Category: Birthday Party",
                                  style: Cardtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 12.0,
                                ),
                                child: Text(
                                  "Incharge: Miss Tanya",
                                  style: Cardtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
