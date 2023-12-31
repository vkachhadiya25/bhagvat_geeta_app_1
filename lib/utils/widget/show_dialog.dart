import 'package:bhagvat_geeta_app/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void alertDialog (BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Consumer<HomeProvider>(
            builder: (context, HomeProvider, browser) {
              return AlertDialog(
                title: const Text("Search Engine"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RadioListTile(
                      value: "Google",
                      groupValue: HomeProvider.language,
                      title: const Text("English"),
                      onChanged: (value) {
                        HomeProvider.setLanguage(value.toString());

                      },
                    ),
                    RadioListTile(
                      value: "Bing",
                      groupValue: HomeProvider.language,
                      onChanged: (value) {
                        HomeProvider.setLanguage(value.toString());
                      },
                      title: const Text("Hindi"),
                    ),
                  ],
                ),
              );
            });
      });
}