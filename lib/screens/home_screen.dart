import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:km_to_miles_converter_redux/redux/actions.dart';
import 'package:km_to_miles_converter_redux/redux/store.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Km'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Km',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    StoreProvider.of<AppState>(context).dispatch(UpdateKm(val));
                  },
                ),
              ),
              const Text('Miles'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(state.miles),
              ),
              ElevatedButton(
                onPressed: () =>
                    StoreProvider.of<AppState>(context).dispatch(Convert()),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
