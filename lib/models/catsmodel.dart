
import 'package:json_annotation/json_annotation.dart';
part 'catsmodel.g.dart';

@JsonSerializable()
class Post{
  
  final String id;
  final String name;
  final String description;


  Post({
    
    this.id,
    this.name,
    this.description
  });
  factory Post.fromJson(Map<String, dynamic>json)=> _$PostFromJson(json);
  Map<String, dynamic>tojson()=> _$PostToJson(this);
}