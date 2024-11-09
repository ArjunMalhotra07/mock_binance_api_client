import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel({
    required int u, // order book updateId
    required String s, // symbol
    required String b, // best bid price
    required String B, // best bid qty
    required String a, // best ask price
    required String A, // best ask qty
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);
}
