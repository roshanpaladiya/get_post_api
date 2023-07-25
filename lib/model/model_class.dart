import 'dart:convert';

List<PostsApi> postsApiFromJson(String str) => List<PostsApi>.from(json.decode(str).map((x) => PostsApi.fromJson(x)));

String postsApiToJson(List<PostsApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostsApi {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostsApi({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostsApi.fromJson(Map<String, dynamic> json) => PostsApi(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
