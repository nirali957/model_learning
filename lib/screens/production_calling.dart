import 'package:flutter/material.dart';

import '../app_data/list_data_two.dart';
import '../data/model/production_model.dart';

class ProductionCallingScreen extends StatefulWidget {
  const ProductionCallingScreen({Key? key}) : super(key: key);

  @override
  State<ProductionCallingScreen> createState() => _ProductionCallingScreenState();
}

class _ProductionCallingScreenState extends State<ProductionCallingScreen> {
  ProductionModel? productionModel;
  @override
  void initState() {
    // TODO: implement initState
    productionModel = ProductionModel.fromJson(ProductionData.ladieswear);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Production Data Calling'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  "Type: ${productionModel!.dress!.type}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Color: ${productionModel!.dress!.color}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Size: ${productionModel!.dress!.size}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Prize: ${productionModel!.dress!.prize}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Quantity: ${productionModel!.dress!.quantity}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  "Type: ${productionModel!.saree!.type}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Color: ${productionModel!.saree!.color}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Prize: ${productionModel!.saree!.prize}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Quantity: ${productionModel!.saree!.quantity}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  "Type: ${productionModel!.western!.type}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Color: ${productionModel!.western!.color}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Prize: ${productionModel!.western!.prize}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Quantity: ${productionModel!.western!.quantity}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
