import 'package:bloc_counter_up/first/cubit/first_cubit.dart';
import 'package:bloc_counter_up/first/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => FirstCubit(),
        child: FirstPage(),
      ),
    );
  }
}
