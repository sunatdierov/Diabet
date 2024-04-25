import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/data/storage/storage.dart';
import 'package:diabet_app/resources/notifications.dart';
import 'package:injectable/injectable.dart';

abstract class DiabetRepository {
  Future<List<DiabetDto>> addNewSample(DiabetDto sample);
  Future<List<DiabetDto>> getAllSamples();
  Future<List<DiabetDto>> getTodaySamples();

  Future<bool> getNotification();
  Future<void> switchNotification();
}

@Injectable(as: DiabetRepository)
class DiabetRepositoryImpl implements DiabetRepository {
  final DiabetStorage _diabetStorage;
  final NotificationService _notificationService;

  DiabetRepositoryImpl(
    this._diabetStorage,
    this._notificationService,
  );
  @override
  Future<List<DiabetDto>> addNewSample(DiabetDto sample) async {
    await _diabetStorage.addNewSample(sample);
    final list = await _diabetStorage.getAllSamples();
    return list;
  }

  @override
  Future<List<DiabetDto>> getAllSamples() async {
    final list = await _diabetStorage.getAllSamples();
    return list;
  }

  @override
  Future<List<DiabetDto>> getTodaySamples() async {
    final list = await _diabetStorage.getAllSamples();

    final today = DateTime.now();
//await Future.delayed(Duration(seconds: 2));

return list
        .where(
          (e) =>
              today.day == e.dateTime.day &&
              today.month == e.dateTime.month &&
              today.year == e.dateTime.year,
        )
        .toList();
    return [
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 0,
          shortInsulin: 30,
          sugar: 45),
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 20,
          shortInsulin: 0,
          sugar: 45),
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 0,
          shortInsulin: 30,
          sugar: 45),
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 20,
          shortInsulin: 30,
          sugar: 45),
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 20,
          shortInsulin: 30,
          sugar: 45),
      DiabetDto(
          dateTime: DateTime.now(), longInsulin: 0, shortInsulin: 20, sugar: 2),
      DiabetDto(
          dateTime: DateTime.now(),
          longInsulin: 0,
          shortInsulin: 14,
          sugar: 65,
          note: 'ddsaf'),
    ];

    
  }

  @override
  Future<bool> getNotification()async  => _diabetStorage.getNotification();

  @override
  Future<void> switchNotification() async {
    bool isNotification = await _diabetStorage.getNotification();
    if(isNotification==true) {
      _notificationService.cancelAllNotifications();
    } 
    else{
      _notificationService.schedulePeriodicNotifications();
    }
    await _diabetStorage.switchNotification();
  }
}
