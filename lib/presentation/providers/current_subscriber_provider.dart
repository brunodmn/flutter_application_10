import 'package:flutter/foundation.dart';
import 'package:flutter_application_10/models/subscriber.dart';
import 'package:flutter_application_10/repositories/fake_subscriber_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'current_subscriber_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrSubscriber extends _$CurrSubscriber {
  @override
  FutureOr<Subscriber> build() {
    debugPrint('[CurrSubscriber] initialized...');
    ref.onDispose(() {
      debugPrint('[CurrSubscriber] disposed');
    });
    return _fetchSubscriber();
  }

  Future<Subscriber> _fetchSubscriber() async {
    state = const AsyncLoading();
    return ref
        .read(fakeSubscriberRepositoryProvider)
        .fetchSubscriber('', document: '');
  }
}
