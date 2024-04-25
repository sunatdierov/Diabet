
class HomePageState {
  String? name;

  HomePageState({
    this.name,
  });

  HomePageState copyWith({
    String? name
  }) =>
      HomePageState(
       name: name??this.name,
      );
}
