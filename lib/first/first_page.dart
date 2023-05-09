import 'dart:developer';

import 'package:bloc_counter_up/first/cubit/first_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../second/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage(
                  // kelgenSan: san,
                );
              }));
            },
            child: Container(
              height: 42.0,
              width: 294.0,
              decoration: BoxDecoration(
                color: const Color(0xffBDBDBD),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Center(
                child: BlocBuilder<FirstCubit, FirstState>(
                  builder: (_, state) {
                    return Text(
                      'Caн: ${state.san}',
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    );
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                context.read<FirstCubit>().minus();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0.01),
                  width: 70,
                  child: const Center(
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 58, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                context.read<FirstCubit>().plus();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0.01),
                  width: 70,
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 58, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
