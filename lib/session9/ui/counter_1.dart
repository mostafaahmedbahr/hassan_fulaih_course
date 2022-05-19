import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hassan_fulaih_course/session9/bloc/cubit.dart';
import 'package:hassan_fulaih_course/session9/bloc/states.dart';
class Counter1 extends StatelessWidget {
  const Counter1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubit = CounterCubit.get(context);
    return BlocConsumer<CounterCubit,CounterStates>(
      listener: (context,state){},
      builder: (context,state){
        return Card(
          elevation: 6,
          child:Container(
            height: 150,
            width: 150,
            child: Center(
              child: Text("${cubit.count}",style: TextStyle(
                fontSize: 40,
              ),),
            ),
          ),
        );
      },

    );
  }
}
