import 'package:diabet_app/data/models/diabet.dart';

class FirstPageState {
  List<DiabetDto> samples;

  FirstPageState({
    required this.samples,
  });

  FirstPageState copyWith({List<DiabetDto>? samples}) => FirstPageState(
        samples: samples ?? this.samples,
      );
}
