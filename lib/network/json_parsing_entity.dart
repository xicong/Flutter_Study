import 'package:flutter_study/generated/json/base/json_field.dart';
import 'dart:convert';
import '../generated/json/json_parsing_entity.g.dart';
@JsonSerializable()
class JsonParsingEntity {
	String? name = '';
	String? email = '';
	JsonParsingEntity();
	factory JsonParsingEntity.fromJson(Map<String, dynamic> json) => $JsonParsingEntityFromJson(json);
	Map<String, dynamic> toJson() => $JsonParsingEntityToJson(this);
	JsonParsingEntity copyWith({String? name, String? email}) {
		return JsonParsingEntity()
			..name= name ?? this.name
			..email= email ?? this.email;
	}
	@override
	String toString() {
		return jsonEncode(this);
	}
}