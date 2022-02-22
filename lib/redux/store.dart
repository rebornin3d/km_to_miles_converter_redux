class AppState {
  late final String km;
  late String miles;

  AppState({required this.km, required this.miles});

  AppState.copyWith(
      {required AppState prev, required String km, required String miles}) {
    this.km = km ?? prev.km;
    this.miles = miles ?? prev.miles;
  }
  AppState.initial(){
    this.km = "0";
    this.miles = "0";
  }

}
