import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      routes: {
        "/":(context) => CounterPage()
      },
    );
  }
}
class CounterPage extends StatelessWidget {
  CounterPage({super.key});
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
              --_counter;
            }
            ,child: const Icon(Icons.remove),),
          const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: (){
              ++_counter;
            }
            ,child: const Icon(Icons.add),),
        ],
      ),
    );
  }
}

