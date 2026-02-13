import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConsumerStatefulwidget extends ConsumerStatefulWidget {
  const ConsumerStatefulwidget({super.key});

  @override
  ConsumerState<ConsumerStatefulwidget> createState() => _ConsumerStatefulwidgetState();
}

class _ConsumerStatefulwidgetState extends ConsumerState<ConsumerStatefulwidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}