import 'dart:convert';
import 'BaseModel.dart';
import 'package:flutter/services.dart';

class JSON {
  static Future<List<dynamic>> readAsset(String jsonPath) async {
    final jsondata = await rootBundle.loadString(jsonPath);
    return json.decode(jsondata) as List<dynamic>;
  }
}

class Json<T extends BaseModel> {
  final T Function() creator;
  Json(this.creator);

  T getGenericInstance(dynamic data) {
    T e = creator();
    e.mapJson(data);
    return e;
  }

  delay(int seconds) async {
    await Future.delayed(Duration(milliseconds: seconds * 1000), () {});
  }

  Future<dynamic> readJson(String jsonPath) async {
    final String response = await rootBundle.loadString(jsonPath);
    final data = await json.decode(response);
    return data;
  }

  Future<List<T>> getList(String jsonPath) async {
    final jsondata = await readJson(jsonPath);
    final list = jsondata as List<dynamic>;
    await delay(2);
    return list.map((e) => getGenericInstance(e)).toList();
  }

  Future<List<T>> parseList(dynamic jsonString) async {
    final list = jsonString as List<dynamic>;
    return list.map((e) => getGenericInstance(e)).toList();
  }

  Future<T> getOjbect(String jsonPath) async {
    final jsondata = await readJson(jsonPath);
    // final obj = jsondata as T;
    return getGenericInstance(jsondata);
  }

  Future<List<T>> read(String jsonPath) async {
    final jsondata = await rootBundle.loadString(jsonPath);
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => getGenericInstance(e)).toList();
  }
}
