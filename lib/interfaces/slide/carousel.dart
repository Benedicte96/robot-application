import 'dart:ffi';

import 'package:flutter/material.dart';

import '../connexion.dart';
import 'content.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 400,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          InkWell(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(80),
              width: double.infinity,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    currentIndex == contents.length - 1
                        ? "Commencer"
                        : "Suivant",
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
              if (currentIndex == contents.length - 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConnexionPage()));
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            contents.length,
            (index) => Container(
                  height: 20,
                  // width: 20,
                  width: currentIndex == index ? 20 : 10,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrangeAccent),
                )),
      ),
    );
  }
}






























// class _CarouselPageState extends State<CarouselPage> {
//   int currentIndex = 0;
//   late PageController _controller;

//   @override
//   void initState() {
//     _controller = PageController(initialPage: 0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _controller,
//               itemCount: contents.length,
//               onPageChanged: (int index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (_, i) {
//                 return Padding(
//                   padding: const EdgeInsets.all(40),
//                   child: Column(
//                     children: [
//                       SvgPicture.asset(
//                         contents[i].image,
//                         height: 300,
//                       ),
//                       Text(
//                         contents[i].title,
//                         style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         contents[i].discription,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.grey,
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 contents.length,
//                 (index) => buildDot(index, context),
//               ),
//             ),
//           ),
//           Container(
//             height: 60,
//             margin: EdgeInsets.all(40),
//             width: double.infinity,
//             child: FlatButton(
//               child: Text(
//                   currentIndex == contents.length - 1 ? "Continue" : "Next"),
//               onPressed: () {
//                 if (currentIndex == contents.length - 1) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => ConnexionPage(),
//                     ),
//                   );
//                 }
//                 _controller.nextPage(
//                   duration: Duration(milliseconds: 100),
//                   curve: Curves.bounceIn,
//                 );
//               },
//               color: Theme.of(context).primaryColor,
//               textColor: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }

//   FlatButton(
//     {required Text child,
//     required Null
//     Function() onPressed,
//     required Color color,
//     required Color textColor,
//     required RoundedRectangleBorder shape}
//     ) {}
// }
