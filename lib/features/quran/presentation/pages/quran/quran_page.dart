import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/learn_the_quran_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LearnTheQuranPage()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/images/quran/fon_quran.png"),
                            fit: BoxFit.fill),
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
                                    colors: [
                                      AppColors.black.withOpacity(0),
                                      AppColors.black
                                    ],
                                    begin: const Alignment(0.00, -1.00),
                                    end: const Alignment(0.00, 1.8),
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 2,
                                      color: AppColors.white,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                    ),
                                    const Text(
                                      "Куран окуу",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.white,
                                          height: 0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
