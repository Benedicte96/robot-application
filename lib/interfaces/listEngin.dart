// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'navbar.dart';
import 'package:sidebar/sidebar.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavBarPage(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(224, 255, 255, 255),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          // title: Text('mes engins'),
          //  leading:  IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //               Navigator.pop(context);
          //             },
          //   alignment: Alignment.topLeft,
          //   padding: EdgeInsetsDirectional.only(top: 0.0),
          //   color: Colors.black,
          // ),
          bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 227, 125, 36),
              //  indicator: BoxDecoration(color: Colors.white),
              // labelColor: Colors.white,
              // unselectedLabelColor: Color.fromARGB(255, 227, 125, 36),
              tabs: [
                Tab(
                  child: Text(
                    'Drones',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Robots',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )
              ]),
          actions: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'assets/images/istockphoto-1030989848-612x612.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40.0),
                  // height: 180,
                  // width: 415,
                  child: Image.asset(
                    'assets/images/undraw_Follow_me_drone_kn76.png',
                    fit: BoxFit.cover,
                    color: Color.fromARGB(255, 245, 240, 240),
                    colorBlendMode: BlendMode.modulate,
                    width: 500,
                    height: 200,
                  ),
                ),

                 TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Recherche',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40.0),
                  // height: 180,
                  // width: 415,
                  child: Image.asset(
                    'assets/images/undraw_Firmware_re_fgdy.png',
                    fit: BoxFit.cover,
                    color: Color.fromARGB(255, 245, 240, 240),
                    colorBlendMode: BlendMode.modulate,
                    width: 500,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Wifi  orange digital center')],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [Icon(Icons.wifi)],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
