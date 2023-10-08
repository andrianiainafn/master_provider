import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/provider/counter.state.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterState counterState = Provider.of<CounterState>(context,listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('counter Provider'),),
      body: Consumer<CounterState>(
        builder:  (context,counterState,child){
          return Center(
            child: Text('Counter Value => ${counterState.counter}'),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              //Provider.of<CounterState>(context,listen: false).decrement();
              counterState.decrement();
            }
            ,child: const Icon(Icons.remove),),
          const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: (){
              counterState.increment();
              // Provider.of<CounterState>(context).increment();
            }
            ,child: const Icon(Icons.add),),
        ],
      ),
    );
  }
}