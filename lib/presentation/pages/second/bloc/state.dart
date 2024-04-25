
import 'package:diabet_app/data/models/diabet.dart';

class SecondPageState {
  List<DiabetDto> samples;

  SecondPageState({
    required this.samples,
  });

  SecondPageState copyWith({List<DiabetDto>? samples}) => SecondPageState(
        samples: samples ?? this.samples,
      );
}
