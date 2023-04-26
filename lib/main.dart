import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_app_bloc/bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Theme App BLoC',
            theme:
                state is ThemeLightState ? ThemeData.light() : ThemeData.dark(),
            home: Scaffold(
                appBar: AppBar(
                  title: const Text('Theme App Bloc'),
                ),
                body: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ElevatedButton(
                    //     onPressed: () =>
                    //         context.read<ThemeBloc>().add(ThemeLightEvent()),
                    //     child: const Text('Light Mode')),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // ElevatedButton(
                    //   onPressed: () => context.read<ThemeBloc>().add(ThemeDarkEvent()),
                    //   child: const Text('Dark Mode'),
                    // ),
                    // const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () =>
                            context.read<ThemeBloc>().add(ThemeChangeEvent()),
                        child: const Text('Toggle Theme'))
                  ],
                ))),
          );
        },
      ),
    );
  }
}
