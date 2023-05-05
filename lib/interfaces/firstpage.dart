import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class FisrtPage extends StatefulWidget {
  @override
  _FisrtPageState createState() => _FisrtPageState();
}

class _FisrtPageState extends State<FisrtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: 0.6,
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FractionallySizedBox(
                    heightFactor: 0.2,
                    widthFactor: 0.2,
                    alignment: Alignment.topRight,
                    child: Container(
                      child: Icon(Icons.zoom_out_map),
                    ),
                  ),
                  FractionallySizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          FractionallySizedBox(
                            heightFactor: 0.8,
                            widthFactor: 0.2,
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                   decoration:BoxDecoration(
                                       color: Colors.pinkAccent.shade100,
                                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20))
                                   ) ,
                                    height: 80,
                                    width: 80,
                                    child: Icon(Icons.favorite_border,color: Colors.white,),
                                  ),
                                  SizedBox(height: 12,),
                                  Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Icon(Icons.remove_red_eye,size: 15,color: Colors.white70,),
                                            Text( '141 k',style: TextStyle(color: Colors.white70,fontSize: 9),)
                                          ],
                                        ),
                                        SizedBox(height: 12,),
                                        Column(
                                          children: <Widget>[
                                            Icon(Icons.arrow_downward,size: 15,color: Colors.white70,),
                                            Text( '65 k',style: TextStyle(color: Colors.white70,fontSize: 9))
                                          ],
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    heightFactor: 0.8,
                    alignment: Alignment.bottomCenter,
                  ),
                  FractionallySizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          FractionallySizedBox(
                            heightFactor: 0.89,
                            alignment: Alignment.topCenter,
                            child: Container(
                              color: Colors.blue,
                              child: Stack(
                                children: <Widget>[
                                  FractionallySizedBox(
                                    heightFactor: 0.2,
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          FractionallySizedBox(
                            heightFactor: 0.89,
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.arrow_back)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    heightFactor: 0.9,
                    widthFactor: 0.8,
                    alignment: Alignment.topLeft,
                  ),
                  FractionallySizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Desciption',style: TextStyle(color: Colors.white,fontSize: 20),),
                          Container(height: 5,width: 5,decoration: BoxDecoration(
                          color: Colors.white,
                            shape: BoxShape.circle
                          ),),
                          Text('Testimonials',style: TextStyle(color: Colors.white70),),
                          Text('Privacy',style: TextStyle(color: Colors.white70),),
                        ],
                      ),
                    ),
                    heightFactor: 0.2,
                    widthFactor: 0.8,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.4,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  FractionallySizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ))
    );
  }
}



