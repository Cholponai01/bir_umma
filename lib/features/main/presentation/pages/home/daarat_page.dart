import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/main/presentation/pages/home/daarat_video_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/gusul_page.dart';

import 'package:flutter/material.dart';

import '../../../../../config/theme/app_colors.dart';

@RoutePage()
class DaaratPage extends StatefulWidget {
  const DaaratPage({super.key});

  @override
  State<DaaratPage> createState() => _DaaratPageState();
}

class _DaaratPageState extends State<DaaratPage> {
  List<GridMenuItem> gridMenu = [];

  @override
  void initState() {
    super.initState();
    gridMenu = [
      GridMenuItem(
          img: "assets/home/daarat/gusul.png",
          title: "Гусул",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GusulPage(),
              ),
            );
          }),
      GridMenuItem(
          img: "assets/home/daarat/daarat.png",
          title: "Даарат",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DaaratVideoPage(),
              ),
            );
          }),
      GridMenuItem(
          img: "assets/home/daarat/tayammum.png",
          title: "Таямум",
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ProfilePage(),
            //   ),
            // );
          }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Даарат"),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 180,
            crossAxisCount: 1,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 50,
          ),
          itemCount: 3,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            gridMenu[index].title,
                            style: const TextStyle(
                                height: 0, color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w700),
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
