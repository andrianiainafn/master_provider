import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/bloc/counter.bloc.dart';
import 'package:state_provider/bloc/counter.cubit.dart';
import 'package:state_provider/provider/counter.state.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('counter Bloc'),),
      body: BlocBuilder<CounterBloc,int>(
        builder: (context,state){
          return Center(
            child: Text('Counter Value => $state'),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.DECREMENT);
            }
            ,child: const Icon(Icons.remove),),
          const SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.INCREMENT);
            }
            ,child: const Icon(Icons.add),),
        ],
      ),
    );
  }
}