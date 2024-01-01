import 'package:bhagvat_geeta_app/screen/home/provider/home_provider.dart';
import 'package:bhagvat_geeta_app/utils/app_routes.dart';
import 'package:bhagvat_geeta_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider(),),
    ],
    child: Consumer<HomeProvider>(
      builder: (context, value, child) {
        value.changeTheme();
        return  MaterialApp(
          theme: value.islight?lightTheme:darkTheme,
          debugShowCheckedModeBanner: false,
          routes: appRoutes,);
      },

    ),
  ));
}

