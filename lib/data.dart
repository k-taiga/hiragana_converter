import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Request {
  const Request({
    required this.appId,
    required this.sentence,
    this.outputType = 'hiragana',
  });

  final String appId;
  final String sentence;
  final String outputType;

  // RequestクラスをMap形式に変換するメソッド
  Map<String, Object?> toJson() => _$RequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Response {
  const Response({
    required this.converted,
  });

  final String converted;

  // factoryコンストラクタを使って、Map形式のデータをResponseクラスに変換するメソッド
  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}
