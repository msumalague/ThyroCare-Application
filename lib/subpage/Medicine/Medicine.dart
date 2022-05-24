import 'NotificationManager.dart';

import 'package:thyroidclass/subpage/Medicine/database/moor_database.dart';
import 'icon_enum.dart';
import 'package:scoped_model/scoped_model.dart';

class MedicineModel extends Model with IconMixin {
  final AppDatabase _database = AppDatabase();
  final NotificationManager notificationManager = NotificationManager();
  MedicineModel();

  Future<List<MedicinesTableData>> getMedicineList() async {
    return await _database.getAllMedicines();
  }

  AppDatabase getDatabase() {
    return _database;
  }

  void toggleIconState() {
    toggleState();
    notifyListeners();
  }

  DeleteIconState getIconState() {
    return getCurrentIconState();
  }

  void refreshList() {
    notifyListeners();
  }
}

mixin IconMixin {
  var iconState = DeleteIconState.hide; // default

  void toggleState() {
    if (iconState == DeleteIconState.hide) {
      iconState = DeleteIconState.show;
    } else {
      iconState = DeleteIconState.hide;
    }
  }

  DeleteIconState getCurrentIconState() {
    return iconState;
  }
}
