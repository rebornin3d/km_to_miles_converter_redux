abstract class Action {}

class Convert extends Action {}

class UpdateKm extends Action {
  late String payload;

  UpdateKm(
    this.payload,
  );
}



class IncrementCounter extends Action{}

class UpdateCounter extends Action{
  late int payload;

  UpdateCounter(
      this.payload,
      );

}
