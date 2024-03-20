import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/main/presentation/pages/home/daarat_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/namaz_page.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_colors.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GridMenuItem> gridMenu = [];

  @override
  void initState() {
    super.initState();
    gridMenu = [
      GridMenuItem(
          img: "assets/home/1.png",
          title: "Даарат",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const DaaratPage()));
          }),
      GridMenuItem(
          img: "assets/home/2.png",
          title: "Намаз",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const NamazPage()));
          }),
      GridMenuItem(img: "assets/home/3.png", title: "Орозо", onTap: () {}),
      GridMenuItem(img: "assets/home/4.png", title: "Ажылык Умра", onTap: () {}),
      GridMenuItem(img: "assets/home/5.png", title: "Зекет Садака", onTap: () {}),
      GridMenuItem(img: "assets/home/6.png", title: "Дем салуу", onTap: () {}),
      GridMenuItem(
        img: "assets/home/7.png",
        title: "Кабыр казуу",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/home/8.png",
        title: "Талак",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/home/9.png",
        title: "Төрт мазгаб",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/home/7.png",
        title: "Кепин ороо",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/home/11.png",
        title: "Куран алиппеси",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/home/12.png",
        title: "Дубалар",
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bir Umma',
          style: TextStyle(
            // fontFamily: 'Anton-Regular',
            color: Color.fromARGB(255, 56, 91, 244),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100,
            crossAxisCount: 3,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 11.0,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: gridMenu[index].onTap,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(
                      gridMenu[index].img,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          begin: const Alignment(0.00, -1.00),
                          end: const Alignment(0, 1.8),
                          colors: [Colors.black.withOpacity(0), Colors.black],
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            gridMenu[index].title,
                            style: const TextStyle(
                                height: 0, color: AppColors.yellow, fontSize: 15, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class GridMenuItem {
  final String title;
  final String img;
  final VoidCallback onTap;

  GridMenuItem({required this.title, required this.img, required this.onTap});
}
