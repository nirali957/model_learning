class ProductionModel {
  Dress?dress;
  Saree?saree;
  Western?western;

  ProductionModel({
    this.dress,
    this.saree,
    this.western,
  });

   ProductionModel.fromJson(Map<dynamic, dynamic> json) {
     dress= Dress.fromJson(json["dress"]);
     saree=Saree.fromJson(json["saree"]);
     western=Western.fromJson(json["western"]);



  }
}
class Dress{
  final String?type;
  final String?size;
  final String?color;
  final int?prize;
  final int?quantity;

  Dress({this.type,
    this.size,
    this.color,
    this.prize,
    this.quantity,}
      );

  factory Dress.fromJson(Map<dynamic, dynamic> json) {
    return Dress(
      type: json['type'],
      color: json['color'],
      size: json['size'],
      prize:json['prize'],
      quantity: json['quantity'],
    );
  }

}
class Saree{
  final String?type;
  final String?color;
  final int?prize;
  final int?quantity;

  Saree({
    this.type,
    this.color,
    this.prize,
    this.quantity
  });
  factory Saree.fromJson(Map<dynamic, dynamic> json) {
    return Saree(
      type: json['type'],
      color: json['color'],
      prize:json['prize'],
      quantity: json['quantity'],
    );
  }

}
class Western{
  final String?type;
  final String?color;
  final int?prize;
  final int?quantity;

  Western({
    this.type,
    this.color,
    this.prize,
    this.quantity
  });
  factory Western.fromJson(Map<dynamic, dynamic> json) {
    return Western(
      type: json['type'],
      color: json['color'],
      prize:json['prize'],
      quantity: json['quantity'],
    );
  }
}

