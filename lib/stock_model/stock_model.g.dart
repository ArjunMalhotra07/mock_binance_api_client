// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoImpl _$$CryptoImplFromJson(Map<String, dynamic> json) => _$CryptoImpl(
      updateId: (json['u'] as num?)?.toInt(),
      symbol: json['s'] as String?,
      bestBidPrice: json['b'] as String?,
      bestBidQty: json['B'] as String?,
      bestAskPrice: json['a'] as String?,
      bestAskQty: json['A'] as String?,
    );

Map<String, dynamic> _$$CryptoImplToJson(_$CryptoImpl instance) =>
    <String, dynamic>{
      'u': instance.updateId,
      's': instance.symbol,
      'b': instance.bestBidPrice,
      'B': instance.bestBidQty,
      'a': instance.bestAskPrice,
      'A': instance.bestAskQty,
    };
