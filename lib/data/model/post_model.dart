// To parse this JSON data, do
//
//     final postModelData = postModelDataFromJson(jsonString);

import 'dart:convert';

PostModelData postModelDataFromJson(String str) => PostModelData.fromJson(json.decode(str));

String postModelDataToJson(PostModelData data) => json.encode(data.toJson());

class PostModelData {
  String? name;
  String? job;
  String? id;
  DateTime? createdAt;

  PostModelData({
    this.name,
    this.job,
    this.id,
    this.createdAt,
  });

  factory PostModelData.fromJson(Map<String, dynamic> json) => PostModelData(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt?.toIso8601String(),
      };
}
