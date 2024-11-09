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

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
mixin _$StockModel {
  int get u => throw _privateConstructorUsedError; // order book updateId
  String get s => throw _privateConstructorUsedError; // symbol
  String get b => throw _privateConstructorUsedError; // best bid price
  String get B => throw _privateConstructorUsedError; // best bid qty
  String get a => throw _privateConstructorUsedError; // best ask price
  String get A => throw _privateConstructorUsedError;

  /// Serializes this StockModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res, StockModel>;
  @useResult
  $Res call({int u, String s, String b, String B, String a, String A});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res, $Val extends StockModel>
    implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = null,
    Object? s = null,
    Object? b = null,
    Object? B = null,
    Object? a = null,
    Object? A = null,
  }) {
    return _then(_value.copyWith(
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as int,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      B: null == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      A: null == A
          ? _value.A
          : A // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockModelImplCopyWith<$Res>
    implements $StockModelCopyWith<$Res> {
  factory _$$StockModelImplCopyWith(
          _$StockModelImpl value, $Res Function(_$StockModelImpl) then) =
      __$$StockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int u, String s, String b, String B, String a, String A});
}

/// @nodoc
class __$$StockModelImplCopyWithImpl<$Res>
    extends _$StockModelCopyWithImpl<$Res, _$StockModelImpl>
    implements _$$StockModelImplCopyWith<$Res> {
  __$$StockModelImplCopyWithImpl(
      _$StockModelImpl _value, $Res Function(_$StockModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = null,
    Object? s = null,
    Object? b = null,
    Object? B = null,
    Object? a = null,
    Object? A = null,
  }) {
    return _then(_$StockModelImpl(
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as int,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      B: null == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      A: null == A
          ? _value.A
          : A // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockModelImpl implements _StockModel {
  const _$StockModelImpl(
      {required this.u,
      required this.s,
      required this.b,
      required this.B,
      required this.a,
      required this.A});

  factory _$StockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockModelImplFromJson(json);

  @override
  final int u;
// order book updateId
  @override
  final String s;
// symbol
  @override
  final String b;
// best bid price
  @override
  final String B;
// best bid qty
  @override
  final String a;
// best ask price
  @override
  final String A;

  @override
  String toString() {
    return 'StockModel(u: $u, s: $s, b: $b, B: $B, a: $a, A: $A)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockModelImpl &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.B, B) || other.B == B) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.A, A) || other.A == A));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, u, s, b, B, a, A);

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      __$$StockModelImplCopyWithImpl<_$StockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockModelImplToJson(
      this,
    );
  }
}

abstract class _StockModel implements StockModel {
  const factory _StockModel(
      {required final int u,
      required final String s,
      required final String b,
      required final String B,
      required final String a,
      required final String A}) = _$StockModelImpl;

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$StockModelImpl.fromJson;

  @override
  int get u; // order book updateId
  @override
  String get s; // symbol
  @override
  String get b; // best bid price
  @override
  String get B; // best bid qty
  @override
  String get a; // best ask price
  @override
  String get A;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
