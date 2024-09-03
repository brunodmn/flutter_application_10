import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_10/presentation/providers/current_app_provider.dart';

class ErrorPage extends ConsumerWidget {
  final String message;
  const ErrorPage(this.message, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('appError message is $message'),
          FilledButton(
              onPressed: () {
                ref.invalidate(currAppProviderProvider);

                // if (message.contains('subscriber')) {
                //   ref.invalidate(currentSubscriberProvider);
                // } else {
                //   ref.invalidate(currentAppProvider);
                // }
              },
              child: const Text('retry'))
        ],
      ))),
    );
  }
}
