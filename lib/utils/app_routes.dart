import 'package:bhagvat_geeta_app/screen/home/view/home_screen.dart';
import 'package:bhagvat_geeta_app/screen/home_info/view/home_info_screen.dart';
import 'package:bhagvat_geeta_app/screen/splesh/view/splesh_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> appRoutes =
{
  '/': (context) => const SpleshScreen(),
  'home': (context) => const HomeScreen(),
  'info': (context) => const HomeInfoScreen(),
};