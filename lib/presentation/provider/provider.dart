import 'package:diabet_app/presentation/pages/first/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/first/bloc/event.dart';
import 'package:diabet_app/presentation/pages/first/first.dart';
import 'package:diabet_app/presentation/pages/home/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/home/home.dart';
import 'package:diabet_app/presentation/pages/second/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/second/bloc/event.dart';
import 'package:diabet_app/presentation/pages/second/second.dart';
import 'package:diabet_app/presentation/pages/third/bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/third/bloc/event.dart';
import 'package:diabet_app/presentation/pages/third/third.dart';
import 'package:diabet_app/presentation/router/router.dart';
import 'package:diabet_app/resources/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProvider {
  static RouteInfo home() => RouteInfo(
        id: HomePage.id,
        builder: (_) => BlocProvider<HomePageBloc>(
          create: (_) => getIt<HomePageBloc>(),
          child: const HomePage(),
        ),
      );
  static RouteInfo first() => RouteInfo(
        id: FirstPage.id,
        builder: (_) => BlocProvider<FirstPageBloc>(
          create: (_) => getIt<FirstPageBloc>()..add(FirstPageInitial()),
          child: const FirstPage(),
        ),
      );
  static RouteInfo second() => RouteInfo(
        id: SecondPage.id,
        builder: (_) => BlocProvider<SecondPageBloc>(
          create: (_) => getIt<SecondPageBloc>()..add(SecondPageInitial()),
          child: const SecondPage(),
        ),
      );
  static RouteInfo third() => RouteInfo(
        id: ThirdPage.id,
        builder: (_) => BlocProvider<ThirdPageBloc>(
          create: (_) => getIt<ThirdPageBloc>()..add(ThirdPageInitial()),
          child: const ThirdPage(),
        ),
      );
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route: {id: $id, builder: $builder}';
  }
}
