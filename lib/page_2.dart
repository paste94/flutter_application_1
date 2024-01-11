import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/app_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => {
            context.read<AppBloc>().add(GoToHome())
          }, 
          child: const Text('Go back'),
        ),
      ),
    );
  }
}