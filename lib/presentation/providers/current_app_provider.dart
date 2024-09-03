import 'package:flutter_application_10/repositories/fake_app_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/app.dart';

part 'current_app_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrAppProvider extends _$CurrAppProvider {
  @override
  FutureOr<App> build() {
    return _fetchApp();
  }

  Future<App> _fetchApp() async {
    state = const AsyncLoading();
    return ref.read(fakeAppRepositoryProvider).fetchApp();
    // state =
    //     await AsyncValue.guard(ref.read(fakeAppRepositoryProvider).fetchApp);
  }
}
