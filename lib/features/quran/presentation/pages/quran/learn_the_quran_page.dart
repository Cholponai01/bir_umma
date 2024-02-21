import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LearnTheQuranPage extends StatelessWidget {
  const LearnTheQuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: CustomScrollView(slivers: [
            SliverAppBar(
              backgroundColor: AppColors.white,
              floating: true,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuranPage()),
                  );
                },
              ),
              title: const Text(
                'Куран 0дон',
                style: TextStyle(color: AppColors.black, fontSize: 18),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.bookmark_border, color: AppColors.black),
                ),
              ],
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: AppColors.green,
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border, color: AppColors.black),
                            SizedBox(width: 10),
                            Text(
                              "3210",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.visibility_rounded,
                                color: AppColors.black),
                            SizedBox(width: 10),
                            Text(
                              "1210",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.share_outlined, color: AppColors.black),
                            SizedBox(width: 10),
                            Text(
                              "2110",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ))
          ]),
        ));
  }
}
