import 'package:diabet_app/presentation/provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'event.dart';

typedef RouteEventHandler = Stream<List<RouteInfo>>;

abstract class RouterEventSink {
  void add(RouterEvent event);
}

@Singleton(as: RouterEventSink)
class RouterBloc extends Bloc<RouterEvent, List<RouteInfo>>
    implements RouterEventSink {
  RouterBloc() : super([ScreenProvider.home()]);

  @override
  Stream<List<RouteInfo>> mapEventToState(RouterEvent event) => event.when(
        pop: _onPop,
        toFirst: _onRouteToFirst,
        toSecond: _onRouteToSecond,
        toThird: _onRouteToThird,
        toHome: _onRouteToHome,
      );

  RouteEventHandler _onPop() async* {
    yield [...state..removeLast()];
  }

  RouteEventHandler _onRouteToHome() async* {
    yield [...state, ScreenProvider.home()];
  }

  RouteEventHandler _onRouteToFirst() async* {
    yield [...state, ScreenProvider.first()];
  }

  RouteEventHandler _onRouteToSecond() async* {
    yield [...state, ScreenProvider.second()];
  }

  RouteEventHandler _onRouteToThird() async* {
    yield [...state, ScreenProvider.third()];
  }


  @override
  Future<void> close() {
    return super.close();
  }
}
