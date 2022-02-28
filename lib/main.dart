import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:km_to_miles_converter_redux/redux/reducers.dart';
import 'package:km_to_miles_converter_redux/redux/store.dart';
import 'package:km_to_miles_converter_redux/screens/home_screen.dart';
import 'package:redux/redux.dart';

void main() {
  Store<AppState> _store =
      Store<AppState>(reducers, initialState: AppState.initialConverter());
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
