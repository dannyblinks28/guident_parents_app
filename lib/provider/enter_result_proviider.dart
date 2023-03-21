import 'package:flutter/foundation.dart';

class EnterResultProvider extends ChangeNotifier {
  String _term = "";
  String get term => _term;
  String _assessmentName = "";
  String get assessmentName => _assessmentName;
  String _classTitle = "";
  String get classTitle => _classTitle;
  String _subject = "";
  String get subject => _subject;
  String _sessionPeriod = "";
  String get sessionPeriod => _sessionPeriod;

  changeTerm(String t) {
    _term = t;
    notifyListeners();
  }

  changeAssessment(String t) {
    _assessmentName = t;
    notifyListeners();
  }

  changeClassTitle(String t) {
    _classTitle = t;
    notifyListeners();
  }

  changeSubject(String t) {
    _subject = t;
    notifyListeners();
  }

  changeSession(String t) {
    _sessionPeriod = t;
    notifyListeners();
  }

  clear() {
    _term = "";
    _assessmentName = "";
    _classTitle = "";
    _subject = "";
    _sessionPeriod = "";
    notifyListeners();
  }
}
