import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/app.dart';

part 'fake_app_repository.g.dart';

const double kProbabiltyOfError = 0.3;
const int kDelayDuration = 1;

class FakeAppRepository {
  final Random random = Random();
  Future<void> waitSeconds() {
    return Future.delayed(const Duration(seconds: kDelayDuration));
  }

  Future<App> fetchApp() async {
    await waitSeconds();
    try {
      if (random.nextDouble() < kProbabiltyOfError) {
        throw '[fetchApp] error';
      }

      return App(id: '0');
    } catch (e) {
      rethrow;
    }
  }
}

@Riverpod(keepAlive: true)
FakeAppRepository fakeAppRepository(FakeAppRepositoryRef ref) {
  return FakeAppRepository();
}
