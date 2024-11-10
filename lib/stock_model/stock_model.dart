import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class Crypto with _$Crypto {
  const factory Crypto({
    @JsonKey(name: "u") required int? updateId,
    @JsonKey(name: "s") required String? symbol,
    @JsonKey(name: "b") required String? bestBidPrice,
    @JsonKey(name: "B") required String? bestBidQty,
    @JsonKey(name: "a") required String? bestAskPrice,
    @JsonKey(name: "A") required String? bestAskQty,
  }) = _Crypto;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
}
