import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'project_colors.dart';

class ThemeConsts {
  static ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent)),
    brightness: Brightness.light,
    primaryColor: ProjectColors.primaryColor,
    primaryColorLight: ProjectColors.primaryColorLight,
    primaryColorDark: ProjectColors.primaryColorDark,
    canvasColor: ProjectColors.canvasColor,
    scaffoldBackgroundColor: ProjectColors.scaffoldBackgroundColor,
    cardColor: ProjectColors.cardColor,
    dividerColor: ProjectColors.dividerColor,
    highlightColor: ProjectColors.highlightColor,
    splashColor: ProjectColors.splashColor,
    unselectedWidgetColor: ProjectColors.unselectedWidgetColor,
    disabledColor: ProjectColors.disabledColor,
    secondaryHeaderColor: ProjectColors.secondaryHeaderColor,
    dialogBackgroundColor: ProjectColors.dialogBackgroundColor,
    indicatorColor: ProjectColors.indicatorColor,
    hintColor: ProjectColors.hintColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ProjectColors.primaryColorDark
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(iconColor: MaterialStatePropertyAll(ProjectColors.primaryColorDark))
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(ProjectColors.primaryColor) ,
      )
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: const Color(0xffe0e0e0),
      disabledColor: const Color(0x61000000),
      highlightColor: const Color(0x29000000),
      splashColor: const Color(0x1f000000),
      focusColor: const Color(0x1f000000),
      hoverColor: const Color(0x0a000000),
      colorScheme: ColorScheme(
        primary: ProjectColors.primaryColor,
        secondary: const Color(0xff1fe068),
        surface: const Color(0xffffffff),
        background: const Color(0xffa5f3c3),
        error: const Color(0xffd32f2f),
        onPrimary: const Color(0xff000000),
        onSecondary: const Color(0xff000000),
        onSurface: const Color(0xff000000),
        onBackground: const Color(0xff000000),
        onError: const Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: ProjectColors.disabledColor,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      floatingLabelStyle: TextStyle(
        color: ProjectColors.hintColor,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: const TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: const TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: ProjectColors.errorColor,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: const EdgeInsets.all(15),
      isCollapsed: false,
      prefixStyle: const TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: const TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: const TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: const Color.fromARGB(10, 0, 0, 0),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.errorColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.highlightColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.highlightColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.highlightColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.highlightColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.highlightColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xdd000000),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xff000000),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      overlayColor: null,
      valueIndicatorColor: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xdd000000),
      unselectedLabelColor: Color(0xb2000000),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d53e78b),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    )),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff19b353);
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff19b353);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff19b353);
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff19b353);
        }
        return null;
      }),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff4285f4),
      selectionColor: Color(0xffa5f3c3),
      selectionHandleColor: Color(0xff79eca4),
    ),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(4283688843, {
      50: Color(0xffe9fcf0),
      100: Color(0xffd2f9e1),
      200: Color(0xffa5f3c3),
      300: Color(0xff79eca4),
      400: Color(0xff4ce686),
      500: Color(0xff1fe068),
      600: Color(0xff19b353),
      700: Color(0xff13863e),
      800: Color(0xff0c5a2a),
      900: Color(0xff062d15)
    }))
        .copyWith(secondary: const Color(0xff1fe068))
        .copyWith(background: const Color(0xffa5f3c3))
        .copyWith(error: const Color(0xffd32f2f)),
  );

  /* *************************************************************** */

  static ThemeData dark = ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    primaryColor: const Color(0xff212121),
    primaryColorLight: const Color(0xff9e9e9e),
    primaryColorDark: const Color(0xff000000),
    canvasColor: const Color(0xff303030),
    cardColor: const Color(0xff424242),
    dividerColor: const Color(0x1fffffff),
    highlightColor: const Color(0x40cccccc),
    splashColor: const Color(0x40cccccc),
    unselectedWidgetColor: const Color(0xb3ffffff),
    disabledColor: const Color(0x62ffffff),
    secondaryHeaderColor: const Color(0xff616161),
    dialogBackgroundColor: const Color(0xff424242),
    indicatorColor: const Color(0xff64ffda),
    hintColor: const Color(0x80ffffff),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ProjectColors.primaryColorDark
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(ProjectColors.primaryColor) ,
      )
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: const Color(0xff19b353),
      disabledColor: const Color(0x61ffffff),
      highlightColor: const Color(0x29ffffff),
      splashColor: const Color(0x1fffffff),
      focusColor: const Color(0x1fffffff),
      hoverColor: const Color(0x0affffff),
      colorScheme: ColorScheme(
        primary: ProjectColors.primaryColor,
        secondary: const Color(0xff64ffda),
        surface: const Color(0xff424242),
        background: const Color(0xff616161),
        error: const Color(0xffd32f2f),
        onPrimary: const Color(0xff000000),
        onSecondary: const Color(0xff000000),
        onSurface: const Color(0xffffffff),
        onBackground: const Color(0xff000000),
        onError: const Color(0xff000000),
        brightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xffffffff),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    primaryTextTheme: TextTheme(
      displayLarge: TextStyle(
        color: ProjectColors.primaryColor,
        fontSize: 50,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: const TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: const TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: const TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: const TextStyle(
        color: Color(0xffffffff),
        fontSize: 80,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      ),
      titleMedium: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: const TextStyle(
        color: Color(0xb3ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Color(0x80ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: const TextStyle(
        color: Color(0x80ffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: ProjectColors.errorColor,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: const EdgeInsets.all(15),
      isCollapsed: false,
      prefixStyle: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: const TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: true,
      fillColor: const Color.fromARGB(7, 255, 255, 255),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.errorColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.weakShadowColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.weakShadowColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.weakShadowColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.weakShadowColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ProjectColors.weakShadowColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      overlayColor: null,
      valueIndicatorColor: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xffffffff),
      unselectedLabelColor: Color(0xb2ffffff),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x1fffffff),
      brightness: Brightness.dark,
      deleteIconColor: Color(0xdeffffff),
      disabledColor: Color(0x0cffffff),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xdeffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3dffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d212121),
      selectedColor: Color(0x3dffffff),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    )),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xff424242)),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff64ffda);
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff64ffda);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff64ffda);
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff64ffda);
        }
        return null;
      }),
    ),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(4280361249, {
      50: Color(0xfff2f2f2),
      100: Color(0xffe6e6e6),
      200: Color(0xffcccccc),
      300: Color(0xffb3b3b3),
      400: Color(0xff999999),
      500: Color(0xff808080),
      600: Color(0xff666666),
      700: Color(0xff4d4d4d),
      800: Color(0xff333333),
      900: Color(0xff191919)
    }))
        .copyWith(secondary: const Color(0xff64ffda))
        .copyWith(background: const Color(0xff616161))
        .copyWith(error: const Color(0xffd32f2f)),
  );
}
