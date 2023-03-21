import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/school_classes_model.dart';
import '../models/school_detail_model.dart';
import '../models/school_session_model.dart';
import '../network/network_enums.dart';
import '../network/network_helper.dart';
import '../network/network_service.dart';
import '../static/static_values.dart';

class UserService {
  Future<dynamic> getSchool({
    required String userName,
    assessmentType,
    test,
    className,
    subject,
    sessionPeriod,
    term,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');

    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      token: token!,
      url:
          '${StaticValues.baseUrl}fetch_parent_student_result/$schoolId?userName=$userName&assessmentType=$assessmentType&className=$className&term=$term&subject=$subject&sessionPeriod=$sessionPeriod',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return SchoolDetailModel.fromJson(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return Error();
        });
  }

  Future<dynamic> fetchParentSingleStudentDetails({
    required String userName,
    studentId,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');

    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      token: token!,
      url:
          '${StaticValues.baseUrl}fetch_parent_single_student_details/$schoolId?studentId=$studentId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return SchoolDetailModel.fromJson(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return Error();
        });
  }

  Future<SchoolClassesModel> getSchoolClasses() async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      token: token!,
      url: '${StaticValues.baseUrl}get_school_classes/?school_id=$schoolId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return SchoolClassesModel.fromJson(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<dynamic> getSessionClasses() async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      token: token!,
      url:
          '${StaticValues.baseUrl}get_school_academic_sessions?school_id=$schoolId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return jsonDecode(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<SchoolSessionModel> getSchoolAcademics() async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      token: token!,
      url:
          '${StaticValues.baseUrl}get_school_academic_sessions/?school_id=$schoolId',
    );
    print(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return SchoolSessionModel.fromJson(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<dynamic> createClass({required String classTitle}) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      token: token!,
      body: jsonEncode({"classTitle": classTitle}),
      url: '${StaticValues.baseUrl}create_school_class/?school_id=$schoolId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return jsonEncode(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<dynamic> createSession({
    required String sessionPeriod,
    required String sessionStartDate,
    required String sessionEndDate,
    required String termName,
    required String termStartDate,
    required String termEndDate,
    required bool current,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      token: token!,
      body: jsonEncode({
        "sessionPeriod": sessionPeriod,
        "session_start_date": sessionStartDate,
        "session_end_date": sessionEndDate,
        "currentTerm": {
          "term_name": termName,
          "term_start_date": termStartDate,
          "term_end_date": termEndDate,
          "current": current,
        },
      }),
      url:
          '${StaticValues.baseUrl}create_academic_session/?school_id=$schoolId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return jsonEncode(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<dynamic> createSubject(
      {required String subject, required String classId}) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      token: token!,
      body: jsonEncode({"subject": subject}),
      url:
          '${StaticValues.baseUrl}create_class_subject/$schoolId?class_id=$classId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return jsonEncode(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }

  Future<dynamic> uploadResult({
    required String term,
    required String assessmentName,
    required String classTitle,
    required String subject,
    required String sessionPeriod,
    required List<Map<String, dynamic>> map,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    var schoolId = prefs.getString('schoolId');
    var token = prefs.getString('token');

    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      token: token!,
      body: jsonEncode({
        "term": term,
        "assessmentName": assessmentName,
        "classTitle": classTitle,
        "subject": subject,
        "sessionPeriod": sessionPeriod,
        "studentsSubjectGrades": map,
      }),
      url: '${StaticValues.baseUrl}upload_result/?school_id=$schoolId',
    );
    log(response!.body);
    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return jsonEncode(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return response.body;
        });
  }
}
