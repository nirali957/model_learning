import 'package:flutter/material.dart';

import '../app_data/list_data.dart';
import '../data/model/common_model.dart';

class ModelCallingScreen extends StatefulWidget {
  const ModelCallingScreen({Key? key}) : super(key: key);

  @override
  State<ModelCallingScreen> createState() => _ModelCallingScreenState();
}

class _ModelCallingScreenState extends State<ModelCallingScreen> {
  CommonModel? commonModel;

  @override
  void initState() {
    // TODO: implement initState
    commonModel = CommonModel.fromJson(AppData.listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model Calling Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Firm name: ${commonModel!.firmName!}",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            "Location: ${commonModel!.location!}",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          Text(
            "CEO: ${commonModel!.ceo!}",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          Text(
            "Product: ${commonModel!.product!}",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: commonModel!.productionList!.length,
              padding: const EdgeInsets.all(15),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.purple,
                    width: 1.5,
                  ),
                  gradient:  const LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.purple,
                      Colors.white,

                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type: ${commonModel!.productionList![index].type}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Color: ${commonModel!.productionList![index].color}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Size: ${commonModel!.productionList![index].size}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
