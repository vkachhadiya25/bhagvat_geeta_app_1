import 'package:bhagvat_geeta_app/screen/home/model/geta_model.dart';
import 'package:bhagvat_geeta_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeInfoScreen extends StatefulWidget {
  const HomeInfoScreen({super.key});

  @override
  State<HomeInfoScreen> createState() => _HomeInfoScreenState();
}

class _HomeInfoScreenState extends State<HomeInfoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    GetaModel g1 = ModalRoute.of(context)!.settings.arguments as GetaModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 2,
                width: MediaQuery.sizeOf(context).width,
                child: Image.asset(
                  "assets/image/imag2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        " CHAPTER ${g1.id}",
                        style: TextStyle(fontSize: 22, color: orange),
                      ),
                    ),
                    Text(
                      "${g1.name}",
                      style: TextStyle(fontSize: 22, color: orange),
                    ),
                    Text(
                      " ${g1.name_transliterated}",
                      style: TextStyle(fontSize: 22, color: orange),
                    ),
                    const Divider(
                      height: 15,
                    ),
                    Text(
                      "${g1.name_meaning}",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.menu_book,
                          color: orange,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${g1.chapter_summary_hindi}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    const Divider(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.menu_book,
                          color: orange,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${g1.chapter_summary}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: black,
                size: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.share_rounded,
                color: black,
                size: 25,
              ),
              label: "Share",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.edit,
                color: black,
                size: 25,
              ),
              label: "Edit",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: black,
                size: 25,
              ),
              label: "BookMark",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.save,
                color: black,
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
