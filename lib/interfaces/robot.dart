// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:robotint/interfaces/pageCarou/second.dart';


class RobotPage extends StatefulWidget {
  @override
  _RobotPageState createState() => _RobotPageState();
}

class _RobotPageState  extends State<RobotPage> {
  @override

    Widget build (BuildContext context){
      // ignore: prefer_const_constructors
      return Scaffold(
        backgroundColor: Colors.white,

        body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/undraw_Drone_delivery_re_in95 (1).png',
                            fit: BoxFit.fitHeight,
                            width: 400,
                            ),
              Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          SizedBox(height: 50),
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                             SizedBox(width: 18),
                              Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                            SizedBox(width: 18),
                              Container(
                             height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                          ],
                        ),
                          SizedBox(width: 18),
                         Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                            child: Text(
                              'Recevez des mises à jour de votre région actuelle',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                ),),
                            )
                         ),
                         Text('Bienvenur sur platforme qui vous premettra de controler votre drone et robot tout en profitant du haut debits de 5g',),
                          SizedBox(width: 50),
                          SizedBox(height: 50,),

                          InkWell(
                            child:   Container(
                            height: 50,
                            width: 170,
                            child:
                            Align(
                              alignment: Alignment.center,
                              child: Text('Suivant',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:  20),)
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 122, 63),
                             borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                           onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context)=> SecondPage()));
                         },
                        )


                      //      Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Text('Skip',style: TextStyle(
                      //           color: Colors.orange,
                      //         ),
                      //         ),
                      //         FloatingActionButton(
                      //           onPressed:() {} ,
                      //           backgroundColor: Colors.white,
                      //           foregroundColor: Colors.orange,
                      //           child: Icon(Icons.arrow_forward_ios),
                      //       ),
                      //     ],
                      //  )
                      ],
                    ),


















            //   Expanded(
            //     flex: 2,
            //  child: Container(

            //  ),
            // ),
              //   Expanded(
              //     flex: 4,
              //     child:
              //      Container(
              //       decoration: BoxDecoration(
              //          color: Colors.black,
              //         // ignore: prefer_const_constructors

              //       ),
              //       child:


              //     )
              //  )
            ],
          ),
           )

        ),
      );
    }
}
