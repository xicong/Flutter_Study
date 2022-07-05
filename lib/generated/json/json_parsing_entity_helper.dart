import 'package:flutter_study/network/json_parsing_entity.dart';

jsonParsingEntityFromJson(JsonParsingEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	return data;
}

Map<String, dynamic> jsonParsingEntityToJson(JsonParsingEntity entity) {
	final Map<String, dynamic> data = Map<String, dynamic>();
	data['name'] = entity.name;
	data['email'] = entity.email;
	return data;
}