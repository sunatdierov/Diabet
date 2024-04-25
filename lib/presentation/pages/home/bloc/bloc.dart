import 'package:bloc/bloc.dart';
import 'package:diabet_app/presentation/pages/home/bloc/event.dart';
import 'package:diabet_app/presentation/pages/home/bloc/state.dart';
import 'package:diabet_app/presentation/router/bloc/bloc.dart';
import 'package:diabet_app/presentation/router/bloc/event.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final RouterEventSink _routerEventSink;

  HomePageBloc(this._routerEventSink) : super(HomePageState()) {
    on<OnRouteToFirst>(
        (event, emit) => _routerEventSink.add(const RouterEvent.toFirst()));
    on<OnRouteToSecond>(
        (event, emit) => _routerEventSink.add(const RouterEvent.toSecond()));
    on<OnRouteToThird>(
        (event, emit) => _routerEventSink.add(const RouterEvent.toThird()));
  }
}
