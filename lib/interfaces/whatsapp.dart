import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WhatPage extends StatefulWidget {
  @override
  _WhatPageState createState() => _WhatPageState();
}

class _WhatPageState extends State<WhatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 102, 19),
        title: Text('WhatsApp',),
        actions: [
          IconButton(
            onPressed: (){},
          icon: Icon(Icons.search)
          ),
          IconButton(onPressed: (){},
          icon: Icon(Icons.more_vert_rounded))
        ],
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt_sharp,),
            ),

            Text('CHAT'),

            Text('STATUS'),

            Text('CALLS'),
          ]),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                child: Image.asset('assets/images/istockphoto-1030989848-612x612.jpg'),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('James',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
                Text('bonjour james comment tu vas')
              ],
              ),

                SizedBox(width: 40,),
                Column(children: [
                  Text('12:40'),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 68, 214, 143)
                    ),
                    child: Center(
                      child: Text('2',style: TextStyle(color: Colors.white),),
                    )
                  )
                ],
                ),
            ],
          ),

             SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('James',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
                Text('bonjour james comment tu vas')
              ],
              ),

                SizedBox(width: 40,),
                Column(children: [
                  Text('12:40'),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 68, 214, 143)
                    ),
                    child: Center(
                      child: Text('2',style: TextStyle(color: Colors.white),),
                    )
                  )
                ],
                ),
            ],
          ),


              SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('James',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
                Text('bonjour james comment tu vas')
              ],
              ),

                SizedBox(width: 40,),
                Column(children: [
                  Text('12:40'),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 68, 214, 143)
                    ),
                    child: Center(
                      child: Text('2',style: TextStyle(color: Colors.white),),
                    )
                  )
                ],
                ),
            ],
          )
        ],
      ),
      ),
    );
  }
}
