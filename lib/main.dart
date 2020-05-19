import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxio Driver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
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
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Status"), //Text(widget.title),
            backgroundColor: Colors.black,
            elevation: 0,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey[400],
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.orangeAccent]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Home"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Earning"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Rating"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Accounts"),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(
                Icons.home,
                size: 150,
              ),
              Icon(
                Icons.monetization_on,
                size: 150,
              ),
              Icon(
                Icons.star,
                size: 150,
              ),
              Icon(
                Icons.account_circle,
                size: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
