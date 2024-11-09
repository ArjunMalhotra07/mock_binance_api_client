// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) =>
    _$StockModelImpl(
      u: (json['u'] as num).toInt(),
      s: json['s'] as String,
      b: json['b'] as String,
      B: json['B'] as String,
      a: json['a'] as String,
      A: json['A'] as String,
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) =>
    <String, dynamic>{
      'u': instance.u,
      's': instance.s,
      'b': instance.b,
      'B': instance.B,
      'a': instance.a,
      'A': instance.A,
    };
