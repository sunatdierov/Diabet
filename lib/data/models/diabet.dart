class DiabetDto {
  DateTime dateTime;
  double shortInsulin;
  double longInsulin;
  double sugar;
  String? note;

  DiabetDto({
    required this.dateTime,
    required this.longInsulin,
    required this.shortInsulin,
    required this.sugar,
    this.note,
  });

  @override
  String toString(){
    return '$dateTime $longInsulin $shortInsulin $sugar';
  }
}
