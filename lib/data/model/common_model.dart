class CommonModel {
  final String? firmName;
  final String? location;
  final String? ceo;
  final String? product;
  final List<ProductionList>? productionList;

  CommonModel({
    this.firmName,
    this.location,
    this.ceo,
    this.product,
    this.productionList,
  });

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      firmName: json['firm_name'],
      location: json['location'],
      ceo: json['ceo'],
      product: json['product'],
      productionList: List<ProductionList>.from(json["production_list"].map((value) => ProductionList.fromJson(value))),
    );
  }
}

class ProductionList {
  final String? type;
  final String? color;
  final int? size;

  ProductionList({this.type, this.color, this.size});

  factory ProductionList.fromJson(Map<String, dynamic> json) {
    return ProductionList(
      type: json['type'],
      color: json['color'],
      size: json['size'],
    );
  }
}
