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
                leading: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuranPage()),
                        );
                      },
                    ),
                    const SizedBox(width: 3),
                    const Text(
                      'Куран 0дон',
                      style: TextStyle(color: AppColors.black, fontSize: 18),
                    )
                  ],
                ))
          ]),
        ));
  }
}
