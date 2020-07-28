import 'package:flutter/material.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/hangang.dart' as hangang;
import 'package:flutter_seoul_hangan_a_to_z/service/api/hangang_api.dart';


class WaterO2Page extends StatefulWidget {
  @override
  _WaterO2PageState createState() => _WaterO2PageState();
}

class _WaterO2PageState extends State<WaterO2Page> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<hangang.Hangang>(
      future: fetchSeoulHangangData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            List<hangang.Row> row = snapshot.data.wPOSInformationTime.row;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${row[index].sITEID}"),
                      trailing: Text(
                        row[index].wDO == "점검중" ? "${row[index].wDO}":
                        "${row[index].wDO} ppm",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                      subtitle: Text("${row[index].mSRDATE} ${row[index].mSRTIME}"),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: row.length),
            );
          }
        } else {}
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
