import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/network/json_parsing_entity.dart';

JsonParsingEntity $JsonParsingEntityFromJson(Map<String, dynamic> json) {
  final JsonParsingEntity jsonParsingEntity = JsonParsingEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    jsonParsingEntity.name = name;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    jsonParsingEntity.email = email;
  }
  return jsonParsingEntity;
}

Map<String, dynamic> $JsonParsingEntityToJson(JsonParsingEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['email'] = entity.email;
  return data;
}