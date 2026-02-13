import 'package:flutter/material.dart';
import 'package:flutter_project/section2/fakeapiservice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fakeApiProvider = Provider((_) => FakeService());

final greetingFutureProvider = FutureProvider((Ref ref) async {
  final service = ref.read(fakeApiProvider);
  return await service.fetchGreeting();
});

class GreetingScreen extends ConsumerWidget {
  const GreetingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingAsync = ref.watch(greetingFutureProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Async Greeting')),
        body: Center(
          child: greetingAsync.when(
            data: (greeting) =>
                Text(greeting, style: const TextStyle(fontSize: 24)),
            error: (error , stackTrace)=> Text(error.toString()),
            loading: ()=> CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
