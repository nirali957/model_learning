class StockModel {
  final StockPalazzo? stockofpalazzo;
  final StockTrouser? stockoftrouser;

  StockModel({
    this.stockofpalazzo,
    this.stockoftrouser,
  });

  factory StockModel.fromJson(Map<String, dynamic> json) {
    return StockModel(
      stockofpalazzo: StockPalazzo.fromJson(json['stock_of_palazzo']),
      stockoftrouser: StockTrouser.fromJson(json['stock_of_trouser']),
    );
  }
}

class StockPalazzo {
  final List<PalazzoList>? palazzolist;

  StockPalazzo({this.palazzolist});

  factory StockPalazzo.fromJson(Map<String, dynamic> json) {
    return StockPalazzo(
      palazzolist: List<PalazzoList>.from(json["palazzo_list"].map((value) => PalazzoList.fromJson(value))),
    );
  }
}

class PalazzoList {
  final int? straightpalazzo;
  final String? flaredpalazzo;
  final int? printedpalazzo;

  PalazzoList({this.straightpalazzo, this.flaredpalazzo, this.printedpalazzo});

  factory PalazzoList.fromJson(Map<String, dynamic> json) {
    return PalazzoList(
      straightpalazzo: json['straight_palazzo'],
      flaredpalazzo: json['flared_palazzo'],
      printedpalazzo: json['printed_palazzo'],
    );
  }
}

class StockTrouser {
  final List<TrouserList>? trouserlist;

  StockTrouser({this.trouserlist});

  factory StockTrouser.fromJson(Map<String, dynamic> json) {
    return StockTrouser(
      trouserlist: List<TrouserList>.from(json['trouser_list'].map((value) => TrouserList.fromJson(value))),
    );
  }
}

class TrouserList {
  final int? wooltrouser;
  final String? linentrouser;
  final int? corduroytrouser;
  TrouserList({this.wooltrouser, this.linentrouser, this.corduroytrouser});

  factory TrouserList.fromJson(Map<String, dynamic> json) {
    return TrouserList(
      wooltrouser: json['wool_trouser'],
      linentrouser: json['linen_trouser'],
      corduroytrouser: json['corduroy_trouser'],
    );
  }
}
