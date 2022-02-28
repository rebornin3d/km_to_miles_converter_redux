import 'package:km_to_miles_converter_redux/redux/store.dart';

import 'actions.dart';
import 'store.dart';

AppState reducers(AppState prevState, dynamic action) {
  AppState newState;

  //converter function
  //updateKM
  if (action is UpdateKm) {
    newState = AppState.copyWithConverter(
        prev: prevState, km: action.payload, miles: '');
  }

  //convert
  else if (action is Convert) {
    double kmAsDouble = double.parse(prevState.km);
    double milesAsDouble = kmAsDouble * 0.621;

    newState = AppState.copyWithConverter(
        prev: prevState, miles: milesAsDouble.toString(), km: '');
  }

//counter function
  //updateCounter
  else if (action is UpdateCounter) {
    newState =
        AppState.copyWithCounter(prev: prevState, counter_01: action.payload);
  }

//incrementCounter
  else if (action is IncrementCounter) {
    int _counter = 2;
    _counter++;

    newState = AppState.copyWithCounter(prev: prevState, counter_01: _counter);
  }

//common throw
  else {
    throw 'this should never happen';
  }
  return newState;
}
