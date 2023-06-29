import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../data/model/post_model.dart';

class PostUserScreen extends StatefulWidget {
  const PostUserScreen({Key? key}) : super(key: key);

  @override
  State<PostUserScreen> createState() => _PostUserScreenState();
}

class _PostUserScreenState extends State<PostUserScreen> {
  PostModelData? postModelData;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: _nameController,
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              SizedBox(height: 10),
              TextField(controller: _jobController, decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              ElevatedButton(
                onPressed: () {
                  postUserAPI();
                },
                child: Text('Post User'),
              ),
              if (postModelData != null)
                Column(
                  children: [
                    Text('Name: ${postModelData!.name ?? ""}'),
                    Text('Job: ${postModelData!.job ?? ""}'),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  postUserAPI() async {
    final client = http.Client();
    try {
      final response = await client.post(
        Uri.parse("https://reqres.in/api/users"),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "name": _nameController.text,
          "job": _jobController.text,
        }),
      );

      if (response.statusCode == 201) {
        postModelData = PostModelData.fromJson(jsonDecode(response.body));
        debugPrint("postModelData -------------->>> ${postModelData!.toJson()}");
        // Clear the text fields
        _nameController.clear();
        _jobController.clear();
      } else {
        debugPrint("Status Code -------------->>> ${response.statusCode}");
      }
    } finally {
      client.close();
      setState(() {});
    }
  }
}
