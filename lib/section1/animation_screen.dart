import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final durattionProvider = Provider((Ref ref) {
  return const Duration(seconds: 2);
});

class AnimationScreen extends ConsumerStatefulWidget {
  const AnimationScreen({super.key});

  @override
  ConsumerState<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends ConsumerState<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final duration = ref.read(durattionProvider);
    _animController = AnimationController(vsync: this, duration: duration)
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Pulsing Circle'),),
        body: Center(
          child: ScaleTransition(scale: _animController.drive(Tween(begin: 0.5,end: 1.5)),
          child: const Icon(Icons.circle,size: 80,color: Colors.blueAccent,),),
        ),
      ),
    );
  }
}
