import 'package:km_to_miles_converter_redux/redux/store.dart';

import 'actions.dart';
import 'store.dart';

AppState reducers(AppState prevState, dynamic action) {
  AppState newState = '' as AppState;
  if (action is UpdateKm) {
    print(Action);
    print(action.payload);

    newState =
        AppState.copyWith(prev: prevState, km: action.payload, miles: '');
        print(newState);
        print(newState.km);
  }else if (action is Convert){
    print(action);

    double kmAsDouble = double.parse(prevState.km);
    double milesAsDouble = kmAsDouble * 0.621;

    print(milesAsDouble);

    newState = AppState.copyWith(prev: prevState  , miles: milesAsDouble.toString(), km: '');
  }
  return newState;
}
