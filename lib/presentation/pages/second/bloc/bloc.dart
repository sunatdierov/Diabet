import 'package:bloc/bloc.dart';
import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/data/repository/diabet.dart';
import 'package:diabet_app/presentation/pages/second/bloc/event.dart';
import 'package:diabet_app/presentation/pages/second/bloc/state.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SecondPageBloc extends Bloc<SecondPageEvent, SecondPageState> {
  final DiabetRepository _diabetRepository;


  SecondPageBloc(this._diabetRepository) : super(SecondPageState(samples: [])) {
    on<SecondPageInitial>((event, emit)async {
      List<DiabetDto> samples = await _diabetRepository.getTodaySamples();
      emit(state.copyWith(samples: samples));
    });
  }
}
