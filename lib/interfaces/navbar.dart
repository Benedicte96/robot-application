import 'package:flutter/material.dart';

class NavBarPage extends StatefulWidget{
  @override
  _NavBarPage  createState () => _NavBarPage();
}
class _NavBarPage extends  State<NavBarPage> {

  @override
  Widget build(BuildContext context){
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             UserAccountsDrawerHeader(
              accountName: Text('Orange Digital Center'),
              accountEmail: Text('oda@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/istockphoto-1030989848-612x612.jpg',
                  fit: BoxFit.fitHeight ,) ,
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 110, 9)
              ),
              ),
              ListTile(
              leading: Icon(Icons.file_upload),
              title: const Text('Telecharger'),
              onTap: () {
                Navigator.pop(context);
              },
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
              ),
                ListTile(
              leading: Icon(Icons.settings),
              title: const Text('parametre'),
              onTap: () {
                Navigator.pop(context);
              },
              ),
                ListTile(
              leading: Icon(Icons.notifications),
              title: const Text('Notification'),
              onTap: () {
                Navigator.pop(context);
              },
              ),
                ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Deconnexion'),
              onTap: () {
                Navigator.pop(context);
              },
              ),
            ]
          )
        );



  }


}


















// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget{

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
//   @override
//   Widget build (BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('ODA.com'),
//               accountEmail: Text('anthekadjo@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 child: ClipOval(
//                   child: Image.asset('assets/images/istockphoto-1030989848-612x612.jpg'),
//                 ),
//               ),
//               )
//         ],
//       ),
//     );
//   }
// }
