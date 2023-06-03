import 'package:json_annotation/json_annotation.dart';

part 'jwt_response.g.dart';

@JsonSerializable(createToJson: false)
class JWTResponse {
  String? token;
  JWTResponse({
    this.token,
  });

  factory JWTResponse.fromJson(Map<String, dynamic> json) =>
      _$JWTResponseFromJson(json);
}
