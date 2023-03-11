// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pfe/widget/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  int selectedIndex = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            //Handle button tap
          },
        ),
        appBar: AppBar(
          // leading: Image.asset("assets\images\clogo.png"),
          actions: [
            Icon(Icons.search),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5),
                // margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                height: 118,
                color: Color.fromARGB(255, 216, 183, 183),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: CircleAvatar(),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 290,
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "what's on your mind?",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 240, top: 8),
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: const Text('Publier'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Color.fromARGB(255, 198, 27, 27),
              ),
            ],
          ),
        ),
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
