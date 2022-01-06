import 'package:flutter_riverpod/flutter_riverpod.dart';

final countStateProvider =
    StateNotifierProvider<CountState, int>((_) => CountState());

class CountState extends StateNotifier<int> {
  CountState() : super(0);

  void increment() => state += 1;
}
