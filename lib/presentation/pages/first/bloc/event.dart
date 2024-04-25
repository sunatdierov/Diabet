
import 'package:diabet_app/data/models/diabet.dart';

abstract class FirstPageEvent {}
class FirstPageInitial extends FirstPageEvent {}
class AddingNewSample extends FirstPageEvent {
  DiabetDto diabetDto;
  AddingNewSample({required this.diabetDto});
}
