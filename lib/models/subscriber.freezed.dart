// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscriber.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Billing _$BillingFromJson(Map<String, dynamic> json) {
  return _Billing.fromJson(json);
}

/// @nodoc
mixin _$Billing {
  String get id => throw _privateConstructorUsedError;
  BillingSituation get situation => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this Billing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Billing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingCopyWith<Billing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingCopyWith<$Res> {
  factory $BillingCopyWith(Billing value, $Res Function(Billing) then) =
      _$BillingCopyWithImpl<$Res, Billing>;
  @useResult
  $Res call({String id, BillingSituation situation, double value});
}

/// @nodoc
class _$BillingCopyWithImpl<$Res, $Val extends Billing>
    implements $BillingCopyWith<$Res> {
  _$BillingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Billing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? situation = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      situation: null == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as BillingSituation,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingImplCopyWith<$Res> implements $BillingCopyWith<$Res> {
  factory _$$BillingImplCopyWith(
          _$BillingImpl value, $Res Function(_$BillingImpl) then) =
      __$$BillingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, BillingSituation situation, double value});
}

/// @nodoc
class __$$BillingImplCopyWithImpl<$Res>
    extends _$BillingCopyWithImpl<$Res, _$BillingImpl>
    implements _$$BillingImplCopyWith<$Res> {
  __$$BillingImplCopyWithImpl(
      _$BillingImpl _value, $Res Function(_$BillingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Billing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? situation = null,
    Object? value = null,
  }) {
    return _then(_$BillingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      situation: null == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as BillingSituation,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingImpl implements _Billing {
  const _$BillingImpl(
      {required this.id, required this.situation, required this.value});

  factory _$BillingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingImplFromJson(json);

  @override
  final String id;
  @override
  final BillingSituation situation;
  @override
  final double value;

  @override
  String toString() {
    return 'Billing(id: $id, situation: $situation, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.situation, situation) ||
                other.situation == situation) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, situation, value);

  /// Create a copy of Billing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingImplCopyWith<_$BillingImpl> get copyWith =>
      __$$BillingImplCopyWithImpl<_$BillingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingImplToJson(
      this,
    );
  }
}

abstract class _Billing implements Billing {
  const factory _Billing(
      {required final String id,
      required final BillingSituation situation,
      required final double value}) = _$BillingImpl;

  factory _Billing.fromJson(Map<String, dynamic> json) = _$BillingImpl.fromJson;

  @override
  String get id;
  @override
  BillingSituation get situation;
  @override
  double get value;

  /// Create a copy of Billing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingImplCopyWith<_$BillingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscriber _$SubscriberFromJson(Map<String, dynamic> json) {
  return _Subscriber.fromJson(json);
}

/// @nodoc
mixin _$Subscriber {
  String get id => throw _privateConstructorUsedError;
  String get document => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  List<Billing> get billings => throw _privateConstructorUsedError;

  /// Serializes this Subscriber to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscriber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriberCopyWith<Subscriber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriberCopyWith<$Res> {
  factory $SubscriberCopyWith(
          Subscriber value, $Res Function(Subscriber) then) =
      _$SubscriberCopyWithImpl<$Res, Subscriber>;
  @useResult
  $Res call({String id, String document, dynamic name, List<Billing> billings});
}

/// @nodoc
class _$SubscriberCopyWithImpl<$Res, $Val extends Subscriber>
    implements $SubscriberCopyWith<$Res> {
  _$SubscriberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscriber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? document = null,
    Object? name = freezed,
    Object? billings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      billings: null == billings
          ? _value.billings
          : billings // ignore: cast_nullable_to_non_nullable
              as List<Billing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriberImplCopyWith<$Res>
    implements $SubscriberCopyWith<$Res> {
  factory _$$SubscriberImplCopyWith(
          _$SubscriberImpl value, $Res Function(_$SubscriberImpl) then) =
      __$$SubscriberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String document, dynamic name, List<Billing> billings});
}

/// @nodoc
class __$$SubscriberImplCopyWithImpl<$Res>
    extends _$SubscriberCopyWithImpl<$Res, _$SubscriberImpl>
    implements _$$SubscriberImplCopyWith<$Res> {
  __$$SubscriberImplCopyWithImpl(
      _$SubscriberImpl _value, $Res Function(_$SubscriberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subscriber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? document = null,
    Object? name = freezed,
    Object? billings = null,
  }) {
    return _then(_$SubscriberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name ? _value.name! : name,
      billings: null == billings
          ? _value._billings
          : billings // ignore: cast_nullable_to_non_nullable
              as List<Billing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriberImpl implements _Subscriber {
  const _$SubscriberImpl(
      {required this.id,
      required this.document,
      this.name = "",
      final List<Billing> billings = const <Billing>[]})
      : _billings = billings;

  factory _$SubscriberImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriberImplFromJson(json);

  @override
  final String id;
  @override
  final String document;
  @override
  @JsonKey()
  final dynamic name;
  final List<Billing> _billings;
  @override
  @JsonKey()
  List<Billing> get billings {
    if (_billings is EqualUnmodifiableListView) return _billings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billings);
  }

  @override
  String toString() {
    return 'Subscriber(id: $id, document: $document, name: $name, billings: $billings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.document, document) ||
                other.document == document) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._billings, _billings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      document,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_billings));

  /// Create a copy of Subscriber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      __$$SubscriberImplCopyWithImpl<_$SubscriberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriberImplToJson(
      this,
    );
  }
}

abstract class _Subscriber implements Subscriber {
  const factory _Subscriber(
      {required final String id,
      required final String document,
      final dynamic name,
      final List<Billing> billings}) = _$SubscriberImpl;

  factory _Subscriber.fromJson(Map<String, dynamic> json) =
      _$SubscriberImpl.fromJson;

  @override
  String get id;
  @override
  String get document;
  @override
  dynamic get name;
  @override
  List<Billing> get billings;

  /// Create a copy of Subscriber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
