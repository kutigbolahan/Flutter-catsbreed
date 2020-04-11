import 'dart:convert';

import 'package:catsbreeds/models/catsmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class HttpService with ChangeNotifier{
  final String url = "https://api.thecatapi.com/v1/breeds?api_key=835f56a6-cdee-40d1-bf7d-08900b3a85eb";//"https://api.punkapi.com/v2/beers/";//"https://newsapi.org/v2/top-headlines?country=ng&apiKey=7b2380f2052e4b2c9223e21021914f2e";////"https://jsonplaceholder.typicode.com/posts";
  //  Future <List<Post>> getPosts() async{
  //   final response = await http.get(url);
  //   if (response.statusCode == 200) {
  //      List<dynamic> body = jsonDecode(response.body);
      
  //     List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();
  //     return posts;
  //   }else{
  //     throw 'Cant get posts';
  //   }
  //  }

  Future<List<Post>> getPosts()async{
    final res = await http.get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts = body.map((dynamic item)=> Post.fromJson(item)).toList();
      return posts;
       
    }else{
      throw 'cant get posts';
    }
  
  }
}