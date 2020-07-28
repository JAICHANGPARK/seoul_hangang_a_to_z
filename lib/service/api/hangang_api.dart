import 'dart:convert';

import 'package:flutter_seoul_hangan_a_to_z/model/hangang.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/hangang_level.dart';
import 'package:flutter_seoul_hangan_a_to_z/model/simple_hangang.dart';
import 'package:http/http.dart' as http;

Future<Hangang> fetchSeoulHangangData() async{
  var response = await http.get("http://openapi.seoul.go.kr:8088/4d714f6e477061723533694d6b6f45/json/WPOSInformationTime/0/5/20200728");
  if(response.statusCode == 200){
    Hangang hangang = Hangang.fromJson(jsonDecode(response.body));
    return hangang;
  }else{
    return null;
  }
}


Future<SimpleHangang> fetchSimpleHangangData() async{
  var response = await http.get("http://hangang.dkserver.wo.tc/");
  if(response.statusCode == 200){
    SimpleHangang hangang = SimpleHangang.fromJson(jsonDecode(response.body));
    return hangang;
  }else{
    return null;
  }
}

Future<HangangLevel> fetchHangangLevelData() async{
  var response = await http.get("http://openapi.seoul.go.kr:8088/4d714f6e477061723533694d6b6f45/json/ListRiverStageService/1/20/");
  if(response.statusCode == 200){
    HangangLevel hangang = HangangLevel.fromJson(jsonDecode(response.body));
    return hangang;
  }else{
    return null;
  }
}
