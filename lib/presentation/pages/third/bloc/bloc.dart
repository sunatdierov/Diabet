import 'package:bloc/bloc.dart';
import 'package:diabet_app/data/repository/diabet.dart';
import 'package:diabet_app/presentation/pages/third/bloc/state.dart';
import 'package:diabet_app/presentation/pages/third/bloc/event.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ThirdPageBloc extends Bloc<ThirdPageEvent, ThirdPageState> {
  DiabetRepository _diabetRepository;

  ThirdPageBloc(this._diabetRepository)
      : super(ThirdPageState(isAvailibleOff: false, isAvailibleOn: false)) {
    on<ThirdPageInitial>(_init);
    on<SetPeriodic>(_setPeriodic);
    on<CancelPeriodic>(_setPeriodic);
  }

  Future<void> _init(
    ThirdPageEvent event,
    Emitter<ThirdPageState> emit,
  ) async {
    bool isNotification = await _diabetRepository.getNotification();
    if (isNotification) {
      emit(state.copyWith(isAvailibleOff: true));
    } else {
      emit(state.copyWith(isAvailibleOn: true));
    }
  }

  Future<void> _setPeriodic(
    ThirdPageEvent event,
    Emitter<ThirdPageState> emit,
  ) async {
    emit(state.copyWith(isAvailibleOff: false, isAvailibleOn: false));
    await _diabetRepository.switchNotification();
    bool isNotification = await _diabetRepository.getNotification();
    if (isNotification) {
      emit(state.copyWith(isAvailibleOff: true));
    } else {
      emit(state.copyWith(isAvailibleOn: true));
    }
  }
}
