import 'package:flutter/material.dart';

import 'simple_hangang_temp_page.dart';
import 'water_o2_page.dart';
import 'water_ph_page.dart';
import 'water_temperature_page.dart';
import 'water_tn_page.dart';

class WaterEnvPage extends StatefulWidget {
  final String title;
  WaterEnvPage(this.title);

  @override
  _WaterEnvPageState createState() => _WaterEnvPageState();
}

class _WaterEnvPageState extends State<WaterEnvPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("개발"),
                subtitle: Text("박제창(@Dreamwalker)"),
              ),

              ListTile(
                title: Text("정보제공기관"),
                subtitle: Text("서울특별시"),
              ),
              ListTile(
                title: Text("환경정보"),
                subtitle: Text("보건환경연구원 물환경연구부"),
              ),
              ListTile(
                title: Text("수위정보"),
                subtitle: Text("물순환안전국 하천관리과"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: (){
                setState(() {

                });

              },
            )
          ],
          bottom: TabBar(
            indicatorWeight: 4,

            isScrollable: true,
            tabs: [
              Tab(
                text: "간편수온",
              ),
              Tab(
                text: "수온",
              ),
              Tab(
                text: "PH",
              ),
              Tab(
                text: "용존산소",
              ),
              Tab(
                text: "총질소",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SimpleHangangTempPage(),
            WaterTemperaturePage(),
            WaterPHPage(),
            WaterO2Page(),
            WaterTnPage(),
          ],
        ),

      ),
    );
  }
}
