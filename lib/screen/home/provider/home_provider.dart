import 'package:bhagvat_geeta_app/screen/home/model/geta_model.dart';
import 'package:bhagvat_geeta_app/utils/json_helper.dart';
import 'package:bhagvat_geeta_app/utils/share_helper.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier
{
   List<GetaModel> getaList = [];

   Future<void> getaGetJson()
   async {
     JsonHelper jsonHelper = JsonHelper();
     List<GetaModel> g1 = await jsonHelper.getaJsonToList();
     getaList = g1 ;
     notifyListeners();
   }
   int index = 0;
   String? language = "English";


   void setLanguage(String value) {
     language = value;
     notifyListeners();
   }

   void changeIndex(int i)
   {
     index = i;
     notifyListeners();
   }

   bool islight = false;

   void changeTheme() async {
   ShareHelper shr = ShareHelper();
   bool? isTheme = await shr.getTheme();
   islight = isTheme ?? true;
   notifyListeners();
   }
}