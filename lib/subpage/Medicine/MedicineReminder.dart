import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:thyroidclass/subpage/Medicine/AddMedicine.dart';
import 'package:thyroidclass/subpage/Medicine/MedicineEmptyState.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:thyroidclass/subpage/Medicine/Medicine.dart';
import 'icon_enum.dart';
import 'DeleteIcon.dart';
import 'MedicineGridView.dart';

class MyMedicineRemainder extends StatefulWidget {
  MyMedicineRemainder();

  @override
  _MyMedicineReminder createState() => _MyMedicineReminder();
}

class _MyMedicineReminder extends State<MyMedicineRemainder> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    MedicineModel model;
    return ScopedModel<MedicineModel>(
      model: model = MedicineModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/banner.png',
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                )
              ],
            ),
            toolbarHeight: 80,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.white70, Colors.teal]),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              buildBottomSheet(deviceHeight, model);
            },
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
            backgroundColor: Theme.of(context).accentColor,
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ScopedModelDescendant<MedicineModel>(
                    builder: (context, child, model) {
                      return Stack(children: <Widget>[
                        buildMedicinesView(model),
                        (model.getCurrentIconState() == DeleteIconState.hide)
                            ? Container()
                            : DeleteIcon()
                      ]);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }

  FutureBuilder buildMedicinesView(model) {
    return FutureBuilder(
      future: model.getMedicineList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          if (snapshot.data.length == 0) {
            // No data
            return Center(child: MedicineEmptyState());
          }
          return MedicineGridView(snapshot.data);
        }
        return (Container());
      },
    );
  }

  void buildBottomSheet(double height, MedicineModel model) async {
    var medicineId = await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45))),
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return (AddMedicine(
              height, model.getDatabase(), model.notificationManager));
        });

    if (medicineId != null) {
      Fluttertoast.showToast(
          msg: "The Medicine was added!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Theme.of(context).accentColor,
          textColor: Colors.white,
          fontSize: 20.0);

      setState(() {});
    }
  }
}
