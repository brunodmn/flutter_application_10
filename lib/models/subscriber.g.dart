// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingImpl _$$BillingImplFromJson(Map<String, dynamic> json) =>
    _$BillingImpl(
      id: json['id'] as String,
      situation: $enumDecode(_$BillingSituationEnumMap, json['situation']),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$BillingImplToJson(_$BillingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'situation': _$BillingSituationEnumMap[instance.situation]!,
      'value': instance.value,
    };

const _$BillingSituationEnumMap = {
  BillingSituation.due: 'due',
  BillingSituation.late: 'late',
  BillingSituation.paid: 'paid',
  BillingSituation.canceled: 'canceled',
};

_$SubscriberImpl _$$SubscriberImplFromJson(Map<String, dynamic> json) =>
    _$SubscriberImpl(
      id: json['id'] as String,
      document: json['document'] as String,
      name: json['name'] ?? "",
      billings: (json['billings'] as List<dynamic>?)
              ?.map((e) => Billing.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Billing>[],
    );

Map<String, dynamic> _$$SubscriberImplToJson(_$SubscriberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document': instance.document,
      'name': instance.name,
      'billings': instance.billings,
    };
