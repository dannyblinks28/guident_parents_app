import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/login_model.dart'; 
import '../network/network_enums.dart';
import '../network/network_helper.dart'; 

import '../network/network_service.dart';
import '../static/static_values.dart';

final authProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  Future<LoginModel> login(String email, String password) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post,
        url: '${StaticValues.baseUrl}login_parent',
        body: json.encode({"emailOrName": email, "parentPassword": password}));

    log('Response : ${response?.body}');

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          log(json.toString());
          return LoginModel.fromJson(json);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return LoginModel(
              message: 'Error',
              schoolCredentials: SchoolCredentials(token: '', parentId: ''));
        });
  }

  Future<dynamic> updateParentPassword(String email, String password) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.patch,
        url: '${StaticValues.baseUrl}update_parent_password',
        body: json.encode({"emailOrName": email, "parentPassword": password}));

    log('Response : ${response?.body}');

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          log(json.toString());
          return json;
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return null;
        });
  }
}
