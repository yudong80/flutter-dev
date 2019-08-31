import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';
import 'supplemental/cut_corners_border.dart';

void main() => runApp(ShrineApp());

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _kShrineTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kShrinePurple,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kShrinePurple,
      textTheme: ButtonTextTheme.primary,
      colorScheme: ColorScheme.light().copyWith(primary: kShrinePurple),
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(
      color: kShrineSurfaceWhite,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(),
    )
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
      fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    fontFamily: 'Raleway',
  );
}