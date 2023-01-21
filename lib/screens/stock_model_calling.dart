import 'package:flutter/material.dart';

import '../app_data/list_data_one.dart';
import '../data/model/stock_model.dart';

class StockModelScreen extends StatefulWidget {
  const StockModelScreen({Key? key}) : super(key: key);

  @override
  State<StockModelScreen> createState() => _StockModelScreenState();
}

class _StockModelScreenState extends State<StockModelScreen> {
  StockModel? stockModel;

  @override
  void initState() {
    // TODO: implement initState
    stockModel = StockModel.fromJson(StockData.stocklist);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stock_Data',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'straight_palazzo 1 : ${stockModel!.stockofpalazzo!.palazzolist![0].straightpalazzo}',
          ),
          Text("straight_palazzo 2 : ${stockModel!.stockofpalazzo!.palazzolist![1].straightpalazzo}"),
          Text("flared_palazzo 1 : ${stockModel!.stockofpalazzo!.palazzolist![0].flaredpalazzo}"),
          Text("flared_palazzo 2 : ${stockModel!.stockofpalazzo!.palazzolist![1].flaredpalazzo}"),
          Text("flared_palazzo 1 : ${stockModel!.stockofpalazzo!.palazzolist![0].printedpalazzo}"),
          Text("flared_palazzo 2 : ${stockModel!.stockofpalazzo!.palazzolist![1].printedpalazzo}"),
        ],
      ),
    );
  }
}
