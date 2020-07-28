import 'package:flutter/material.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/hangang_level.dart';
import 'package:flutter_seoul_hangan_a_to_z/service/api/hangang_api.dart';
import 'package:flutter_seoul_hangan_a_to_z/ui/screen/water_level_list_page.dart';


class WaterLevelPage extends StatefulWidget {
  final String title;

  WaterLevelPage(this.title);

  @override
  _WaterLevelPageState createState() => _WaterLevelPageState();
}

class _WaterLevelPageState extends State<WaterLevelPage> {
  List<dRow> _list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      body: RefreshIndicator(
        onRefresh: fetchHangangLevelData,
        child: FutureBuilder<HangangLevel>(
          future: fetchHangangLevelData(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              List<dRow> row = snapshot.data.listRiverStageService.row;
              _list = row;
              return ListView.builder(
                  itemCount: row.length,
                  itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${row[index].gUNAME}",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("${row[index].sTOREDTIME}")
                            ],
                          ),
                          Text("${row[index].rIVERGAUGENAME} ${row[index].rIVERNAME}",
                              style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                          Divider(thickness: 1.5,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar( backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].cURRENTLEVEL}"),
                                    ),
                                    Text("실시간 하천 수위(m)"
                                      , style: TextStyle(
                                      fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar( backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].lEVEELEVEL}"),
                                    ),
                                    Text("제방고(m)", style: TextStyle(
                                        fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar( backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].pLANFLOODLEVEL}"),
                                    ),
                                    Text("계획홍수위(m)", style: TextStyle(
                                        fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].oRDINARYLEVEL}"),
                                    ),
                                    Text("하상고", style: TextStyle(
                                        fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].uNDERWATERLEVEL}"),
                                    ),
                                    Text("침수수위", style: TextStyle(
                                        fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      radius: 32,
                                      child: Text("${row[index].cONTROLLEVEL}"),
                                    ),
                                    Text("통제수위", style: TextStyle(
                                        fontSize: 12
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                );
              });
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: (){
          if(_list == null){

          }else{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WaterLevelListPage(
                _list,
            )));
          }
        },
        child: Icon(Icons.list),
      ),
    );
  }
}
