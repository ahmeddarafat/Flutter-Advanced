import 'package:flutter_advanced/presentation/resources/switchers/app_langauges.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyLang = "Prefs-Key-Lang";

class AppPrefs{
  final SharedPreferences _sharedPreferences;
  AppPrefs(this._sharedPreferences);

  String getAppLanguage(){
    String? language = _sharedPreferences.getString(prefsKeyLang);
    if(language !=null){
      return language;
    }else{
      return AppLanguages.english.getLanguage();
    }
  }
}

// Draft

// you can initialize shared preferences in method init
// class AppPref{
//   static late SharedPreferences _sharedPreferences;
//   static Future<void> init()async{
//     _sharedPreferences = await SharedPreferences.getInstance();

//   }
// }