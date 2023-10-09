import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/bloc/counter.bloc.dart';
import 'package:state_provider/bloc/counter.cubit.dart';
import 'package:state_provider/pages/counter.bloc.page.dart';
import 'package:state_provider/pages/counter.cubit.page.dart';
import 'package:state_provider/pages/counter.provider.page.dart';
import 'package:state_provider/pages/counter.stateful.page.dart';
import 'package:state_provider/provider/counter.state.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit(0)),
        BlocProvider(create: (context)=>CounterBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.lightBlue
        ),
        routes: {
          "/":(context) => CounterBlocPage()
        },
      ),
    );
  }
}



//PROVIDER

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CounterState())
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.lightBlue
        ),
        routes: {
          "/":(context) => CounterProviderPage()
        },
      ),
    );
  }
}*/


