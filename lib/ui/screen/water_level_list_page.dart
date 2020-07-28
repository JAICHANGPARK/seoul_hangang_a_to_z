import 'package:flutter/material.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/hangang_level.dart';

class WaterLevelListPage extends StatefulWidget {
  final List<dRow> dataList;
  WaterLevelListPage(this.dataList);

  @override
  _WaterLevelListPageState createState() => _WaterLevelListPageState();
}

class _WaterLevelListPageState extends State<WaterLevelListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            title: Text("${widget.dataList[index].rIVERGAUGENAME} ${widget.dataList[index].rIVERNAME}"),
            subtitle: Text("${widget.dataList[index].gUNAME}"),
            trailing: Text("${widget.dataList[index].sTOREDTIME}"),
          );
        }, separatorBuilder:
        (context, index){
          return Divider();
        }, itemCount: widget.dataList.length),
      ),
    );
  }
}
