import 'dart:convert';

import 'package:bhagvat_geeta_app/screen/home/model/geta_model.dart';
import 'package:flutter/services.dart';

class JsonHelper
{
  Future<List<GetaModel>> getaJsonToList()
  async {
     var jsonString = await rootBundle.loadString("assets/json/gita.json");
     List geta = jsonDecode(jsonString);
     List<GetaModel> modelList = geta.map((e) => GetaModel.mapToModel(e)).toList();
     return modelList;
  }
}