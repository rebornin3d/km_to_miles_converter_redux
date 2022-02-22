abstract class Action {}

class Convert extends Action {}

class UpdateKm extends Action {
  late String payload;

  UpdateKm(
    this.payload,
  );
}
