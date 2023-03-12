// ignore_for_file: prefer_const_constructors

import 'package:pfe/widget/widgets.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List Screens = [
    HomePage(),
    Profile(),
    QuiS(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.question_mark, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        // appBar: AppBar(
        //   // leading: Image.asset("assets\images\clogo.png"),
        //   actions: [
        //     Icon(Icons.search),
        //   ],
        // ),
        body: Screens[_selectedIndex],
      ),
    );
  }
}

// IndexedStack(
//   index: selectedIndex,
//   children: [
//     Text(selectedIndex.toString()),
//     Text(selectedIndex.toString()),
//     Text(selectedIndex.toString()),
//     Text(selectedIndex.toString()),
//   ],
// ),
// Text("You are in The Main Page"),
