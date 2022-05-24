import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';

class HomeUpdateWeight extends StatefulWidget {
  const HomeUpdateWeight({Key? key}) : super(key: key);

  @override
  _HomeUpdateWeightState createState() => _HomeUpdateWeightState();
}

class _HomeUpdateWeightState extends State<HomeUpdateWeight> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  // This function is triggered when the "Save" button is pressed
  void _saveWeight() {
    final bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      if (kDebugMode) {
        print('New weight has been added');
      }
      // And do something here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: new Column(children: <Widget>[
                    Text(
                      'Add Weight',
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      textAlign: TextAlign.left,
                    ),
                  ])),
              SizedBox(
                height: 15.0,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null && value.trim().length < 2) {
                          return 'This field requires a minimum of 2 characters';
                        }
                        if (value != null && value.trim().length > 6) {
                          return 'This field requires a maximum of 6 characters';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'Enter your weight in kilogram unit',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 5))),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton.icon(
                        onPressed: _saveWeight,
                        icon: const Icon(Icons.save),
                        label: const Text('Save'))
                  ]))
            ]))));
  }
}
