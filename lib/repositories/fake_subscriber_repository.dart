import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/subscriber.dart';
part 'fake_subscriber_repository.g.dart';

const double kProbabiltyOfError = 0.6;
const int kDelayDuration = 1;

class FakeSubscriberRepository {
  final Random random = Random();
  Future<void> waitSeconds() {
    return Future.delayed(const Duration(seconds: kDelayDuration));
  }

  Future<Subscriber> fetchSubscriber(String appId,
      {required String document}) async {
    await waitSeconds();
    if (random.nextDouble() < kProbabiltyOfError) {
      throw '[fetchSubscriber] error';
    }
    return const Subscriber(id: '0', document: '0000');
  }

  Future<List<Billing>> fetchSubscriberBillings(String appId,
      {BillingSituation? situation}) async {
    await waitSeconds();
    if (random.nextDouble() < kProbabiltyOfError) {
      throw '[fetchSubscriberBillings] error';
    }
    return List.generate(
        5,
        (index) => Billing(
            id: index.toString(),
            situation: situation ?? BillingSituation.due,
            value: index * 100));
  }

  // @override
  // Future<Subscriber> fetchApp() async {
  //   await waitSeconds();
  //   try {
  //     if (random.nextDouble() < kProbabiltyOfError) {
  //       throw AppErrorGeneric(message: 'Fail to retrieve app');
  //     }
  //     if (random.nextDouble() < kProbabiltyOfError) {
  //       throw AppErrorInactivated(message: 'This app is inactivated');
  //     }
  //     if (random.nextDouble() < kProbabiltyOfError) {
  //       throw 'unexpected error';
  //     }
  //     return App(id: '0');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}

@Riverpod(keepAlive: true)
FakeSubscriberRepository fakeSubscriberRepository(
    FakeSubscriberRepositoryRef ref) {
  return FakeSubscriberRepository();
}
