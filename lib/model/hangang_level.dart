class HangangLevel {
  ListRiverStageService listRiverStageService;

  HangangLevel({this.listRiverStageService});

  HangangLevel.fromJson(Map<String, dynamic> json) {
    listRiverStageService = json['ListRiverStageService'] != null
        ? new ListRiverStageService.fromJson(json['ListRiverStageService'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listRiverStageService != null) {
      data['ListRiverStageService'] = this.listRiverStageService.toJson();
    }
    return data;
  }
}

class ListRiverStageService {
  int listTotalCount;
  RESULT rESULT;
  List<dRow> row;

  ListRiverStageService({this.listTotalCount, this.rESULT, this.row});

  ListRiverStageService.fromJson(Map<String, dynamic> json) {
    listTotalCount = json['list_total_count'];
    rESULT =
    json['RESULT'] != null ? new RESULT.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      row = new List<dRow>();
      json['row'].forEach((v) {
        row.add(new dRow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list_total_count'] = this.listTotalCount;
    if (this.rESULT != null) {
      data['RESULT'] = this.rESULT.toJson();
    }
    if (this.row != null) {
      data['row'] = this.row.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RESULT {
  String cODE;
  String mESSAGE;

  RESULT({this.cODE, this.mESSAGE});

  RESULT.fromJson(Map<String, dynamic> json) {
    cODE = json['CODE'];
    mESSAGE = json['MESSAGE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CODE'] = this.cODE;
    data['MESSAGE'] = this.mESSAGE;
    return data;
  }
}

class dRow {
  String rIVERGAUGECODE;
  String rIVERGAUGENAME;
  String rIVERNAME;
  String gUCODE;
  String gUNAME;
  String sTOREDTIME;
  String tRANSFERTIME;
  double cURRENTLEVEL;
  double lEVEELEVEL;
  double pLANFLOODLEVEL;
  double oRDINARYLEVEL;
  double uNDERWATERLEVEL;
  double cONTROLLEVEL;

  dRow(
      {this.rIVERGAUGECODE,
        this.rIVERGAUGENAME,
        this.rIVERNAME,
        this.gUCODE,
        this.gUNAME,
        this.sTOREDTIME,
        this.tRANSFERTIME,
        this.cURRENTLEVEL,
        this.lEVEELEVEL,
        this.pLANFLOODLEVEL,
        this.oRDINARYLEVEL,
        this.uNDERWATERLEVEL,
        this.cONTROLLEVEL});

  dRow.fromJson(Map<String, dynamic> json) {
    rIVERGAUGECODE = json['RIVERGAUGE_CODE'];
    rIVERGAUGENAME = json['RIVERGAUGE_NAME'];
    rIVERNAME = json['RIVER_NAME'];
    gUCODE = json['GU_CODE'];
    gUNAME = json['GU_NAME'];
    sTOREDTIME = json['STORED_TIME'];
    tRANSFERTIME = json['TRANSFER_TIME'];
    cURRENTLEVEL = json['CURRENT_LEVEL'];
    lEVEELEVEL = json['LEVEE_LEVEL'];
    pLANFLOODLEVEL = json['PLANFLOOD_LEVEL'];
    oRDINARYLEVEL = json['ORDINARY_LEVEL'];
    uNDERWATERLEVEL = json['UNDERWATER_LEVEL'];
    cONTROLLEVEL = json['CONTROL_LEVEL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RIVERGAUGE_CODE'] = this.rIVERGAUGECODE;
    data['RIVERGAUGE_NAME'] = this.rIVERGAUGENAME;
    data['RIVER_NAME'] = this.rIVERNAME;
    data['GU_CODE'] = this.gUCODE;
    data['GU_NAME'] = this.gUNAME;
    data['STORED_TIME'] = this.sTOREDTIME;
    data['TRANSFER_TIME'] = this.tRANSFERTIME;
    data['CURRENT_LEVEL'] = this.cURRENTLEVEL;
    data['LEVEE_LEVEL'] = this.lEVEELEVEL;
    data['PLANFLOOD_LEVEL'] = this.pLANFLOODLEVEL;
    data['ORDINARY_LEVEL'] = this.oRDINARYLEVEL;
    data['UNDERWATER_LEVEL'] = this.uNDERWATERLEVEL;
    data['CONTROL_LEVEL'] = this.cONTROLLEVEL;
    return data;
  }
}
