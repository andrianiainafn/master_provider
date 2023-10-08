import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('counter'),),
      body: Center(
        child: Text('Counter Value => $_counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                --_counter;
              });
            }
            ,child: const Icon(Icons.remove),),
          const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                ++_counter;
              });
            }
            ,child: const Icon(Icons.add),),
        ],
      ),
    );
  }
}