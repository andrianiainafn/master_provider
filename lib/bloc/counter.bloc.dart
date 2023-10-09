import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { INCREMENT,DECREMENT}
class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0){
    on((event, emit){
      switch(event){
        case CounterEvent.INCREMENT :
          emit(state + 1);
          break;
        case CounterEvent.DECREMENT :
          emit(state -1);
          break;
      }
    });
  }
}