// ignore_for_file: prefer_const_constructors

import 'package:pfe/widget/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  child: ElevatedButton(
                      onPressed: () async {
                        if (FirebaseAuth.instance.currentUser != null) {
                          await FirebaseAuth.instance.signOut();
                        }
                      },
                      child: Text("signOut"))),
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
