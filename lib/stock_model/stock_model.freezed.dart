// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Crypto _$CryptoFromJson(Map<String, dynamic> json) {
  return _Crypto.fromJson(json);
}

/// @nodoc
mixin _$Crypto {
  @JsonKey(name: "u")
  int? get updateId => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  String? get bestBidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "B")
  String? get bestBidQty => throw _privateConstructorUsedError;
  @JsonKey(name: "a")
  String? get bestAskPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "A")
  String? get bestAskQty => throw _privateConstructorUsedError;

  /// Serializes this Crypto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoCopyWith<Crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCopyWith<$Res> {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) then) =
      _$CryptoCopyWithImpl<$Res, Crypto>;
  @useResult
  $Res call(
      {@JsonKey(name: "u") int? updateId,
      @JsonKey(name: "s") String? symbol,
      @JsonKey(name: "b") String? bestBidPrice,
      @JsonKey(name: "B") String? bestBidQty,
      @JsonKey(name: "a") String? bestAskPrice,
      @JsonKey(name: "A") String? bestAskQty});
}

/// @nodoc
class _$CryptoCopyWithImpl<$Res, $Val extends Crypto>
    implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateId = freezed,
    Object? symbol = freezed,
    Object? bestBidPrice = freezed,
    Object? bestBidQty = freezed,
    Object? bestAskPrice = freezed,
    Object? bestAskQty = freezed,
  }) {
    return _then(_value.copyWith(
      updateId: freezed == updateId
          ? _value.updateId
          : updateId // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      bestBidPrice: freezed == bestBidPrice
          ? _value.bestBidPrice
          : bestBidPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestBidQty: freezed == bestBidQty
          ? _value.bestBidQty
          : bestBidQty // ignore: cast_nullable_to_non_nullable
              as String?,
      bestAskPrice: freezed == bestAskPrice
          ? _value.bestAskPrice
          : bestAskPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestAskQty: freezed == bestAskQty
          ? _value.bestAskQty
          : bestAskQty // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoImplCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$$CryptoImplCopyWith(
          _$CryptoImpl value, $Res Function(_$CryptoImpl) then) =
      __$$CryptoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "u") int? updateId,
      @JsonKey(name: "s") String? symbol,
      @JsonKey(name: "b") String? bestBidPrice,
      @JsonKey(name: "B") String? bestBidQty,
      @JsonKey(name: "a") String? bestAskPrice,
      @JsonKey(name: "A") String? bestAskQty});
}

/// @nodoc
class __$$CryptoImplCopyWithImpl<$Res>
    extends _$CryptoCopyWithImpl<$Res, _$CryptoImpl>
    implements _$$CryptoImplCopyWith<$Res> {
  __$$CryptoImplCopyWithImpl(
      _$CryptoImpl _value, $Res Function(_$CryptoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateId = freezed,
    Object? symbol = freezed,
    Object? bestBidPrice = freezed,
    Object? bestBidQty = freezed,
    Object? bestAskPrice = freezed,
    Object? bestAskQty = freezed,
  }) {
    return _then(_$CryptoImpl(
      updateId: freezed == updateId
          ? _value.updateId
          : updateId // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      bestBidPrice: freezed == bestBidPrice
          ? _value.bestBidPrice
          : bestBidPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestBidQty: freezed == bestBidQty
          ? _value.bestBidQty
          : bestBidQty // ignore: cast_nullable_to_non_nullable
              as String?,
      bestAskPrice: freezed == bestAskPrice
          ? _value.bestAskPrice
          : bestAskPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestAskQty: freezed == bestAskQty
          ? _value.bestAskQty
          : bestAskQty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoImpl implements _Crypto {
  const _$CryptoImpl(
      {@JsonKey(name: "u") required this.updateId,
      @JsonKey(name: "s") required this.symbol,
      @JsonKey(name: "b") required this.bestBidPrice,
      @JsonKey(name: "B") required this.bestBidQty,
      @JsonKey(name: "a") required this.bestAskPrice,
      @JsonKey(name: "A") required this.bestAskQty});

  factory _$CryptoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoImplFromJson(json);

  @override
  @JsonKey(name: "u")
  final int? updateId;
  @override
  @JsonKey(name: "s")
  final String? symbol;
  @override
  @JsonKey(name: "b")
  final String? bestBidPrice;
  @override
  @JsonKey(name: "B")
  final String? bestBidQty;
  @override
  @JsonKey(name: "a")
  final String? bestAskPrice;
  @override
  @JsonKey(name: "A")
  final String? bestAskQty;

  @override
  String toString() {
    return 'Crypto(updateId: $updateId, symbol: $symbol, bestBidPrice: $bestBidPrice, bestBidQty: $bestBidQty, bestAskPrice: $bestAskPrice, bestAskQty: $bestAskQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoImpl &&
            (identical(other.updateId, updateId) ||
                other.updateId == updateId) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.bestBidPrice, bestBidPrice) ||
                other.bestBidPrice == bestBidPrice) &&
            (identical(other.bestBidQty, bestBidQty) ||
                other.bestBidQty == bestBidQty) &&
            (identical(other.bestAskPrice, bestAskPrice) ||
                other.bestAskPrice == bestAskPrice) &&
            (identical(other.bestAskQty, bestAskQty) ||
                other.bestAskQty == bestAskQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updateId, symbol, bestBidPrice,
      bestBidQty, bestAskPrice, bestAskQty);

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      __$$CryptoImplCopyWithImpl<_$CryptoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoImplToJson(
      this,
    );
  }
}

abstract class _Crypto implements Crypto {
  const factory _Crypto(
      {@JsonKey(name: "u") required final int? updateId,
      @JsonKey(name: "s") required final String? symbol,
      @JsonKey(name: "b") required final String? bestBidPrice,
      @JsonKey(name: "B") required final String? bestBidQty,
      @JsonKey(name: "a") required final String? bestAskPrice,
      @JsonKey(name: "A") required final String? bestAskQty}) = _$CryptoImpl;

  factory _Crypto.fromJson(Map<String, dynamic> json) = _$CryptoImpl.fromJson;

  @override
  @JsonKey(name: "u")
  int? get updateId;
  @override
  @JsonKey(name: "s")
  String? get symbol;
  @override
  @JsonKey(name: "b")
  String? get bestBidPrice;
  @override
  @JsonKey(name: "B")
  String? get bestBidQty;
  @override
  @JsonKey(name: "a")
  String? get bestAskPrice;
  @override
  @JsonKey(name: "A")
  String? get bestAskQty;

  /// Create a copy of Crypto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
