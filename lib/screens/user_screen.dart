import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../data/model/user_model.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  GetModelData? getModelData;
  @override
  void initState() {
    // TODO: implement initState
    getUserAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(getModelData?.data?[index].firstName ?? ""),
                subtitle: Text(getModelData?.data?[index].lastName ?? ""),
                trailing: Text(getModelData?.data?[index].email ?? ""),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: getModelData?.data?.length ?? 0));
  }

  getUserAPI() async {
    var client = http.Client();
    try {
      Response response = await client.get(Uri.parse("https://reqres.in/api/users?page=2"));
      if (response.statusCode == 200) {
        getModelData = GetModelData.fromJson(jsonDecode(response.body));
        debugPrint("getModelData -------------->>> ${getModelData!.toJson()}");
        setState(() {});
      } else {
        debugPrint("Status Code -------------->>> ${response.statusCode}");
      }
    } finally {
      client.close();
    }
  }
}
