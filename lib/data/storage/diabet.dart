import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'diabet.g.dart';

@HiveType(typeId: 0)
class DiabetHiveType extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  DateTime? dateTime;
  @HiveField(2)
  double? shortInsulin;
  @HiveField(3)
  double? longInsulin;
  @HiveField(4)
  double? sugar;
  @HiveField(5)
  String? note;
 

  DiabetHiveType(
      {this.id,
      this.dateTime,
      this.shortInsulin,
      this.longInsulin,
      this.sugar,
      this.note
     });
}