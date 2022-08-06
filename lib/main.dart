import 'package:flutter/material.dart';
import 'package:portfolio_project/core/Themes/dark_theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/Themes/themes.dart';
import 'views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DarkThemeCubit(),
      child: BlocBuilder<DarkThemeCubit, DarkThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'Ahmed Beheiri Portfolio',

              theme: Styles.themeData(state.darkTheme, context),
              home: HomeView());
        },
      ),
    );
  }
}
