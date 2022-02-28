class AppState {
  late final String km;
  String miles = '';
  int counter_var = 5;
  
  AppState({required this.km, required this.miles, required this.counter_var});

  AppState.copyWithConverter(
      {required AppState prev, required String km, required String miles}) {
    this.km = km ?? prev.km;
    this.miles = miles ?? prev.miles;
  }
  AppState.initialConverter(){
    this.km = "0";
    this.miles = "0";
  }
  
  

  
  AppState.copyWithCounter({required AppState prev, required int counter_01}){
    this.counter_var = counter_01;


  }
  
  AppState.initialCounter(){
    this.counter_var;
  }
  

}
