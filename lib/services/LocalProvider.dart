import 'package:flutter/cupertino.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  bool isArabic = true;

  void setLocale(Locale locale){

    _locale = locale;
    if(isArabic==true){
      isArabic=false;
    }
    else
      isArabic=true;
    notifyListeners();
  }
}