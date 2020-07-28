class Hangang {
  WPOSInformationTime wPOSInformationTime;

  Hangang({this.wPOSInformationTime});

  Hangang.fromJson(Map<String, dynamic> json) {
    wPOSInformationTime = json['WPOSInformationTime'] != null
        ? new WPOSInformationTime.fromJson(json['WPOSInformationTime'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wPOSInformationTime != null) {
      data['WPOSInformationTime'] = this.wPOSInformationTime.toJson();
    }
    return data;
  }
}

class WPOSInformationTime {
  int listTotalCount;
  RESULT rESULT;
  List<Row> row;

  WPOSInformationTime({this.listTotalCount, this.rESULT, this.row});

  WPOSInformationTime.fromJson(Map<String, dynamic> json) {
    listTotalCount = json['list_total_count'];
    rESULT =
    json['RESULT'] != null ? new RESULT.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      row = new List<Row>();
      json['row'].forEach((v) {
        row.add(new Row.fromJson(v));
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

class Row {
  String mSRDATE;
  String mSRTIME;
  String sITEID;
  String wTEMP;
  String wPH;
  String wDO;
  String wTN;
  String wTP;
  String wTOC;
  String wPHEN;
  String wCN;

  Row(
      {this.mSRDATE,
        this.mSRTIME,
        this.sITEID,
        this.wTEMP,
        this.wPH,
        this.wDO,
        this.wTN,
        this.wTP,
        this.wTOC,
        this.wPHEN,
        this.wCN});

  Row.fromJson(Map<String, dynamic> json) {
    mSRDATE = json['MSR_DATE'];
    mSRTIME = json['MSR_TIME'];
    sITEID = json['SITE_ID'];
    wTEMP = json['W_TEMP'];
    wPH = json['W_PH'];
    wDO = json['W_DO'];
    wTN = json['W_TN'];
    wTP = json['W_TP'];
    wTOC = json['W_TOC'];
    wPHEN = json['W_PHEN'];
    wCN = json['W_CN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MSR_DATE'] = this.mSRDATE;
    data['MSR_TIME'] = this.mSRTIME;
    data['SITE_ID'] = this.sITEID;
    data['W_TEMP'] = this.wTEMP;
    data['W_PH'] = this.wPH;
    data['W_DO'] = this.wDO;
    data['W_TN'] = this.wTN;
    data['W_TP'] = this.wTP;
    data['W_TOC'] = this.wTOC;
    data['W_PHEN'] = this.wPHEN;
    data['W_CN'] = this.wCN;
    return data;
  }
}
