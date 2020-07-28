import 'package:flutter/material.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/simple_hangang.dart';
import 'package:flutter_seoul_hangan_a_to_z/service/api/hangang_api.dart';


class SimpleHangangTempPage extends StatefulWidget {
  @override
  _SimpleHangangTempPageState createState() => _SimpleHangangTempPageState();
}

class _SimpleHangangTempPageState extends State<SimpleHangangTempPage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: fetchSimpleHangangData,
      child: FutureBuilder<SimpleHangang>(
        future: fetchSimpleHangangData(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 3,
                    child: Center(child: Text("${snapshot.data.temp}°C",style: TextStyle(
                      fontSize: 72
                    ),)),
                  ),
                  SizedBox(height: 16,),
                  Text("기준시각: ${snapshot.data.time}")
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },

      ),
    );
  }
}
