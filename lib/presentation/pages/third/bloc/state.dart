class ThirdPageState {
  bool isAvailibleOn;
  bool isAvailibleOff;

  ThirdPageState({
    required this.isAvailibleOff,
    required this.isAvailibleOn,
  });

  ThirdPageState copyWith({
    bool? isAvailibleOn,
    bool? isAvailibleOff,
  }) =>
      ThirdPageState(
        isAvailibleOff: isAvailibleOff ?? this.isAvailibleOff,
        isAvailibleOn: isAvailibleOn ?? this.isAvailibleOn,
      );
}
