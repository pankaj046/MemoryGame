import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {

  static SharedPreferences prefs;

  static const EASY = 'easy';
  static const HARD = 'hard';


  //Save Data
  static saveString(String key, String value) async {
    prefs.setString(key, value);
  }

  static saveInt(String key, int value) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static saveDouble(String key, double value) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  static saveBoolean(String key, bool value) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  //get Data
  static getString(String key) async {
    prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(key);
    return value==null?'':value;
  }

  static getInt(String key) async {
    prefs = await SharedPreferences.getInstance();
    int value = prefs.getInt(key);
    return value==null ?0:value;
  }

  static Future<dynamic> getDouble(String key) async {
    prefs = await SharedPreferences.getInstance();
    double value = prefs.getDouble(key);
    return value==null?0.0:value;
  }

  static getBoolean(String key) async {
    prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(key);
    return value==null?false:value;
  }
}