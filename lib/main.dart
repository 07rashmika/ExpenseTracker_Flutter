import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var kColorSceme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(266, 96, 59, 181),
);

var kDarkColorSceme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorSceme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSceme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorSceme.onPrimaryContainer,
          foregroundColor: kDarkColorSceme.primaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorSceme.primaryContainer,
            foregroundColor: kDarkColorSceme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorSceme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSceme.onPrimaryContainer,
          foregroundColor: kColorSceme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSceme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSceme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorSceme.onSecondaryContainer,
            fontSize: 14,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
  // });
}
