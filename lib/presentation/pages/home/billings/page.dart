import 'package:flutter/material.dart';
import 'package:flutter_application_10/presentation/providers/current_subscriber_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/subscriber.dart';
import '../../../../utils/dialog_utils.dart';

class HomeBillingsPage extends ConsumerStatefulWidget {
  const HomeBillingsPage({super.key});

  @override
  ConsumerState<HomeBillingsPage> createState() =>
      _SubscriberBillingPageState();
}

class _SubscriberBillingPageState extends ConsumerState<HomeBillingsPage> {
  Widget previousWidget = const Center(
    child: Text('no billings found'),
  );

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      ref.read(currSubscriberProvider.notifier).fetchBillings();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      currSubscriberProvider,
      (prev, next) {
        if (next is AsyncError) {
          DialogUtils.errorDialog(context, next);
        }
      },
    );

    final subscriberState = ref.watch(currSubscriberProvider);

    successWidget(List<Billing> billings) {
      previousWidget = ListView(
        children: [
          for (var billing in billings)
            ListTile(
              title: Text('Id: ${billing.id}'),
            )
        ],
      );
      return previousWidget;
    }

    loadingWidget() => const Center(
          child: LinearProgressIndicator(),
        );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Billings'),
          actions: [
            IconButton(
                onPressed: () {
                  // ref.invalidate(billingsProvider);
                },
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: switch (subscriberState) {
          AsyncLoading() => loadingWidget(),
          AsyncData() => successWidget(subscriberState.value.billings),
          _ => previousWidget,
        });
  }
}
