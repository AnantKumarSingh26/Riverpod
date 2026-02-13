import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final fakeApiProvider = Provider((_) => FakeService());

class FakeService {
  Future<String> fetchGreeting() async {
    await Future.delayed(const Duration(seconds: 2));

    if (Random().nextDouble() < 0.3) {
      throw Exception('Failed to fetch Greeting');
    }
    return 'Hello from Async!';
  }
}
