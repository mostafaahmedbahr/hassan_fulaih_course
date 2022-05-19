import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hassan_fulaih_course/session9/bloc/states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context)=>BlocProvider.of(context);

  int count =0;

  void add()
  {
    count++;
    emit(CounterAddState());
  }
}