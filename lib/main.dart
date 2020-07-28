import 'package:flutter/material.dart';
import 'package:flutter_seoul_hangan_a_to_z/ui/screen/water_env_page.dart';
import 'service/api/hangang_api.dart';
import 'ui/screen/water_level_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '여기, 지금 한강',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '여기, 지금 한강'),
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
  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchSeoulHangangData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: [
          WaterEnvPage(widget.title),
          WaterLevelPage(widget.title),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        selectedItemColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("수질정보")),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("수위정보")),
        ],
      ),
    );
  }
}
