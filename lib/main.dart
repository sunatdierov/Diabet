import 'package:diabet_app/data/storage/diabet.dart';
import 'package:diabet_app/data/storage/storage.dart';
import 'package:diabet_app/presentation/router/bloc/bloc.dart';
import 'package:diabet_app/presentation/router/router.dart';
import 'package:diabet_app/resources/injection/injection.dart';
import 'package:diabet_app/resources/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await setupApp();
  runApp(const MyApp());
}

Future<void> setupApp() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DiabetHiveTypeAdapter());
  await Future.wait([DiabetStorageHive.init()]);

  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().init();

  await configureInjection(Env.dev);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: BlocProvider<RouterBloc>(
          create: (_) => getIt<RouterEventSink>() as RouterBloc,
          child: Router(
            routerDelegate: AppRouterDelegate(),
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Dosis',
        backgroundColor: Colors.white,
      ),
    );
  }
}
