import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final textProvider = StateProvider((Ref ref) {
  return '';
});

class ConsumerStatefulwidget extends ConsumerStatefulWidget {
  const ConsumerStatefulwidget({super.key});

  @override
  ConsumerState<ConsumerStatefulwidget> createState() =>
      _ConsumerStatefulwidgetState();
}

class _ConsumerStatefulwidgetState
    extends ConsumerState<ConsumerStatefulwidget> {
  late final TextEditingController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TextEditingController();
    _controller.addListener(() {
      ref.read(textProvider.notifier).state = _controller.text;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = ref.watch(textProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Consumer Stateful Provider')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(controller: _controller),
              const SizedBox(height: 20),
              Text('You Typed: $text'),
            ],
          ),
        ),
      ),
    );
  }
}
