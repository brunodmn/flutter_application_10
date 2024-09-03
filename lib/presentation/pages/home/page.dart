import 'package:flutter/material.dart';
import 'package:flutter_application_10/models/subscriber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/current_subscriber_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscriberState =
        (ref.read(currSubscriberProvider) as AsyncData<Subscriber>);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SubscriberHomePage'),
        actions: [
          // IconButton(
          //     onPressed: () => ref
          //         .read(currSubscriberProvider.notifier)
          //         .logoutSubscriber(),
          //     icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SubscriberHomePage'),
            Text('subscriber ${subscriberState.value} '),
            FilledButton(
                onPressed: () {
                  // SubscriberBillingRoute().go(context);
                },
                child: const Text('billings'))
          ],
        ),
      ),
    );
  }
}
