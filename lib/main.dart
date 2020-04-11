import 'package:catsbreeds/models/catsmodel.dart';
import 'package:catsbreeds/services/catsapi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cats Breed'),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: ( context,  snapshot){
          if (snapshot.hasData) {
             List<Post> posts = snapshot.data;
             return ListView(
               children: posts.map((Post post)=>
               ListTile(
                 title:Text(post.name),
                 subtitle: Text(post.description)
               )
               ).toList(),
             );
          }
          return Container();
        }
        ),
    );
  }
}