import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/cubit/cout.dart';

void main() {
  runApp(Count());
}

class Count extends StatelessWidget {
  Count({super.key});
  final cubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 270,
              ),
              BlocBuilder<CounterCubit, CounterState>(
                bloc: cubit,
                builder: (context, state) {
                  if (state is IncreaseState) {
                    var count = state.c;
                    return Text('$count', style: const TextStyle(fontSize: 25));
                  } else if (state is DecreeseState) {
                    var count = state.c;
                    return Text('$count', style: const TextStyle(fontSize: 25));
                  }
                  return const Text('0', style: TextStyle(fontSize: 25));
                },
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 320,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                              backgroundColor: Colors.red,
                              onPressed: () {
                                cubit.increase();
                              },
                              child: const Text('+',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ))),
                          const SizedBox(
                            height: 5,
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.red,
                              onPressed: () {
                                cubit.decrease();
                              },
                              child: const Text(
                                '-',
                                style: TextStyle(fontSize: 25),
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
