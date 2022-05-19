import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hassan_fulaih_course/session9/bloc/cubit.dart';
import 'package:hassan_fulaih_course/session9/bloc/states.dart';
import 'package:hassan_fulaih_course/session9/ui/counter_1.dart';
import 'package:hassan_fulaih_course/session9/ui/counter_2.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = CounterCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Card(
              elevation: 10,
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DashBoard",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Counter1(),
                        SizedBox(width: 20,),
                        Counter2(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
            cubit.add();
            },
          ),
        );
      },

    );
  }
}
