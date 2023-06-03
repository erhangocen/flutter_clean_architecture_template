import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentAppProvider extends ChangeNotifier{
  ThemeMode currentThemeMode = ThemeMode.dark;

  void changeThemeMode(){
    if(currentThemeMode == ThemeMode.dark){
      currentThemeMode = ThemeMode.light;
    }
    else{
      currentThemeMode = ThemeMode.dark;
    }
    notifyListeners();
  }
}

final studentAppProvider = ChangeNotifierProvider((ref){
  return StudentAppProvider();
});

