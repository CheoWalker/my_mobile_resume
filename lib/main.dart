import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 500,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset('assets/profile_background.jpg'),
                  ),
                  Positioned(
                    top: 225,
                    right: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 50,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Cheo Z Walker',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white70,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white54,
                                  ),
                                  Text(
                                    'New Jersey, USA',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 335,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Dedicated Web Developer that specializes in “Object Oriented Programming”.  Fast to self educate on the latest web standards and technologies.  Possessing a keen insight to client relations as well as understanding the needs of all stakeholders in web projects.',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.developer_board),
                  iconSize: 36,
                  onPressed: () {},
                  color: Colors.white54,
                ),
                Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.list),
              iconSize: 36,
              onPressed: () {},
              color: Colors.white54,
            ),
            IconButton(
              icon: Icon(Icons.contacts),
              iconSize: 36,
              onPressed: () {},
              color: Colors.white54,
            ),
          ],
        ),
      ),
    );
  }
}
