import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final staticStringProvider = Provider ((Ref ref){
  return "Hello World!!";
});

final intProvider = Provider ((Ref ref){
  return 25;
});

final doubleProvider = Provider ((Ref ref){
  return 25.11;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(staticStringProvider);
    final resultInt = ref.read(intProvider);
    final resultDouble = ref.watch(doubleProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(result+resultInt.toString()+resultDouble.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
        ),
      ),
    );
  }
}
