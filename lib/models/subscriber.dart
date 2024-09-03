import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscriber.freezed.dart';
part 'subscriber.g.dart';

enum BillingSituation {
  due,
  late,
  paid,
  canceled,
}

@freezed
class Billing with _$Billing {
  const factory Billing(
      {required String id,
      required BillingSituation situation,
      required double value}) = _Billing;

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);
}

@freezed
class Subscriber with _$Subscriber {
  const factory Subscriber({
    required String id,
    required String document,
    @Default("") name,
    @Default(<Billing>[]) List<Billing> billings,
  }) = _Subscriber;
  factory Subscriber.fromJson(Map<String, dynamic> json) =>
      _$SubscriberFromJson(json);
}
