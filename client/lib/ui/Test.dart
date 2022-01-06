import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../store/helloWorldStore.dart';

class Test extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  int value = ref.watch(countStateProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text('$value'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(countStateProvider.notifier).increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
