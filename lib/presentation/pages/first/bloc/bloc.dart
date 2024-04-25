import 'package:bloc/bloc.dart';
import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/data/repository/diabet.dart';
import 'package:diabet_app/presentation/pages/first/bloc/event.dart';
import 'package:diabet_app/presentation/pages/first/bloc/state.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class FirstPageBloc extends Bloc<FirstPageEvent, FirstPageState> {
  final DiabetRepository _diabetRepository;

  FirstPageBloc(this._diabetRepository)
      : super(FirstPageState(samples: [])) {
    on<FirstPageInitial>(((event, emit) async {
      List<DiabetDto> samples = await _diabetRepository.getTodaySamples();
      emit(state.copyWith(samples: samples));
    }));
    on<AddingNewSample>((event, emit) async {
      print(event.diabetDto);
var samples = await _diabetRepository.addNewSample(event.diabetDto);
          emit(state.copyWith(samples: samples));
    });
  }
}
