import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/main/presentation/widgets/icon_with_counter_widget.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LearnTheQuranPage extends StatelessWidget {
  const LearnTheQuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: CustomScrollView(slivers: [
            SliverAppBar(
              backgroundColor: AppColors.white,
              floating: true,
              elevation: 1,
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
                'Куран 0дөн',
                style: TextStyle(color: AppColors.black, fontSize: 18),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.bookmark_border, color: AppColors.black),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/quran/quran/fon_quran.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 70,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue,
                                  blurRadius: 15,
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/home/daarat/youtube.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 150,
                        left: 70,
                        child: Text(
                          "Куран 0дөн,биринчи сабак",
                          style: TextStyle(color: AppColors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconWithCounter(icon: Icons.favorite_border, counter: 210),
                        SizedBox(width: 25),
                        IconWithCounter(icon: Icons.visibility_outlined, counter: 1123),
                        SizedBox(width: 25),
                        IconWithCounter(icon: Icons.share_outlined, counter: 1644),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.   \nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          style: TextStyle(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
