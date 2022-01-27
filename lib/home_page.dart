import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 786;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
        backgroundColor: Colors.red,
        elevation: 0,
        toolbarHeight: 350,
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: 350,
        child: Container(),
      ),
      SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      child: Container(
                        width: 160,
                        height: 48,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login / Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                        ),
                      ),
                    ),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, bottom: 18),
              child: Text(
                'Let\'s Meet',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 24),
              child: Text(
                'Schedule your Appointment near by business and Save your time',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 60,
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.redAccent,
                      ),
                    ),
                    Text(
                      'new high road abs',
                      style: TextStyle(fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.redAccent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: VerticalDivider(
                        color: Colors.black12,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search doctor, salon and many more',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            labelStyle: TextStyle(fontSize: 20)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
