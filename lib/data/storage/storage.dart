import 'package:diabet_app/data/models/diabet.dart';
import 'package:diabet_app/data/storage/diabet.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class DiabetStorage {
  Future<void> addNewSample(DiabetDto sample);
  Future<List<DiabetDto>> getAllSamples();

  Future<void> switchNotification();
  Future<bool> getNotification();
}

@Injectable(as: DiabetStorage)
class DiabetStorageHive implements DiabetStorage {
  static const _samplesBoxName = 'samples';
  static const _notificationBoxName = 'notification';

  Box get _samplesHiveBox => Hive.box(_samplesBoxName);
  Box get _notificationHiveBox => Hive.box(_notificationBoxName);

  static Future init() async {
    await Hive.openBox(_samplesBoxName);
    await Hive.openBox(_notificationBoxName);
  }

  @override
  Future<void> clear() async {
    await _samplesHiveBox.clear();
    await _notificationHiveBox.clear();
  }

  @override
  Future<void> switchNotification() async {
    bool elem = await _notificationHiveBox.get('isNotification') ?? false;
    print('11 - '+elem.toString());
    await _notificationHiveBox.put('isNotification', !elem);
  }

  @override
  Future<bool> getNotification() async {
    return await _notificationHiveBox.get('isNotification') ?? false;

    if (_notificationHiveBox.length == 0) {
      await _notificationHiveBox.put('isNotification', false);
      return false;
    } else {
      return await _notificationHiveBox.get('isNotification');
    }
  }

  @override
  Future<void> addNewSample(DiabetDto sample) async {
    var newSample = DiabetHiveType()
      ..dateTime = sample.dateTime
      ..longInsulin = sample.longInsulin
      ..shortInsulin = sample.shortInsulin
      ..sugar = sample.sugar
      ..note = sample.note;

    await _samplesHiveBox.add(newSample);
  }

  @override
  Future<List<DiabetDto>> getAllSamples() async {
    List<DiabetDto> users = [];
    for (int i = 0; i < _samplesHiveBox.length; i++) {
      DiabetHiveType elem = await _samplesHiveBox.getAt(i);
      var user = DiabetDto(
          dateTime: elem.dateTime!,
          longInsulin: elem.longInsulin!,
          shortInsulin: elem.shortInsulin!,
          sugar: elem.sugar!,
          note: elem.note);
      users.add(user);
    }
    return users;
  }
}
