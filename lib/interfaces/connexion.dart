// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'listEngin.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading:  IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
                        Navigator.pop(context);
                      },
            alignment: Alignment.topLeft,
            padding: EdgeInsetsDirectional.only(top: 0.0),
            color: Colors.black,
          ),
        ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
              child: Text(
            'Bienvenue',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
          )),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
                child: Text(
              'Bienvenue sur votre platform',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )),
          ),
          SizedBox(
            height: 35,
          ),
          Image.asset(
            'assets/images/undraw_Signal_searching_re_yl8n.png',
            fit: BoxFit.fitHeight,
            width: 500,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 197, 195, 195)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Nom d utilisateur',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  prefixIcon: Icon(Icons.person_2_sharp)),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 197, 195, 195)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Mot de passe',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  prefixIcon: Icon(Icons.key_sharp)),
              obscureText: true,
            ),
          ),
           SizedBox(
            height: 35,
          ),
          InkWell(
            child: Container(
              height: 70,
              width: 170,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 122, 63),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListPage()));
            },
          )
        ],
      )),
    );
  }
}
