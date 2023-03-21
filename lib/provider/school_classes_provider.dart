import 'dart:developer';

import 'package:flutter/foundation.dart';
// import 'package:guident_admin/model/school_classes_model.dart';
// import 'package:guident_admin/services/user_service.dart';

/*class SchoolClassesProvider extends ChangeNotifier {
  SchoolClassesModel? _model;
  SchoolClassesModel? get model => _model;
  bool _isLoading = true;
  bool get isLoading => _isLoading;
  bool get isEmpty => _model!.data == null;

  getDetail() async {
    try {
      _model = await UserService().getSchoolClasses();
      log(_model.toString());
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
    }
  }
}*/
