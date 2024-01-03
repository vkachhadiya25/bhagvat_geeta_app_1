import 'package:bhagvat_geeta_app/screen/home/model/geta_model.dart';
import 'package:bhagvat_geeta_app/screen/home/provider/home_provider.dart';
import 'package:bhagvat_geeta_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeInfoScreen extends StatefulWidget {
  const HomeInfoScreen({super.key});

  @override
  State<HomeInfoScreen> createState() => _HomeInfoScreenState();
}

class _HomeInfoScreenState extends State<HomeInfoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    GetaModel g1 = ModalRoute.of(context)!.settings.arguments as GetaModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " CHAPTER ${g1.id}",
            style: TextStyle(fontSize: 22, color: orange),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                providerw!.language == "English"
                    ? Text(
                        "${g1.name_transliterated}",
                        style: TextStyle(fontSize: 22, color: orange),
                      )
                    : Text(
                        "${g1.name}",
                        style: TextStyle(fontSize: 22, color: orange),
                      ),
                const SizedBox(height: 5,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network("${g1.image}",fit: BoxFit.fill,),),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.menu_book,
                      color: orange,
                    )),
                const SizedBox(
                  height: 5,
                ),
                providerw!.language == "English"
                    ? Text(
                        "${g1.chapter_summary}",
                        style: TextStyle(fontSize: 18, color: black),
                      )
                    : Text(
                        "${g1.chapter_summary_hindi}",
                        style: TextStyle(fontSize: 18, color: black),
                      ),
                const Divider(
                  height: 15,
                ),
                Text(
                  "Shlok",
                  style: TextStyle(fontSize: 22, color: orange),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.menu_book,
                      color: orange,
                    )),
                providerw!.language == "English"
                    ? Text(
                        "${g1.eShlok}",
                        style: TextStyle(fontSize: 18, color: black),
                      )
                    : Text(
                        "${g1.shlok}",
                        style: TextStyle(fontSize: 18, color: black),
                      ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: providerr!.islight ? black : white,
                size: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.share_rounded,
                color: providerr!.islight ? black : white,
                size: 25,
              ),
              label: "Share",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.edit,
                color: providerr!.islight ? black : white,
                size: 25,
              ),
              label: "Edit",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: providerr!.islight ? black : white,
                size: 25,
              ),
              label: "BookMark",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.save,
                color: providerr!.islight ? black : white,
                size: 25,
              ),
              label: "Save",
            ),
          ],
        ),
      ),
    );
  }
}
