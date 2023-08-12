import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/presentation/providers/counter_provider.dart';
import 'package:wigets_app/presentation/providers/is_lightmode_provider.dart';

 

class CounterScreen extends ConsumerWidget {

  static const name = 'counter_screen';

  const CounterScreen({super.key});
   
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final int clickCounter = ref.watch( counterProvider );
    final bool isLigthness = ref.watch( isLightmodeProvider );
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Counter"),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 40, 5),
            child: IconButton(
              onPressed: (){
                ref.read( isLightmodeProvider.notifier ).update((state) => !state);
              }, 
              icon: Icon (
                (isLigthness)? Icons.light_mode : Icons.dark_mode),
                iconSize: 30,
                color: Theme.of(context).colorScheme.tertiary,
              ) 
            ),
          
        ],
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter", 
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: colors.secondary),)
          ],)),
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            iconSize: 50,
            onPressed: () => ref.read( counterProvider.notifier ).state++, 
            icon: const Icon(Icons.add),
          ),
          
          const SizedBox( height: 40,),
          
          IconButton(
            iconSize: 50,
            onPressed:() => ref.read(counterProvider.notifier ).update((state) => 0), 
            icon: const Icon(Icons.restore),
          ),
        ],
      ),

    );
  }
}