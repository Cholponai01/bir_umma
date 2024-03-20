// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/main/presentation/pages/home/home_page.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/profile_page.dart';
import 'package:bir_umma/features/question_answer/presentation/pages/premium/premium_page.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:bir_umma/features/zikir/presentation/pages/zikir/zikir_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: _currentIndex,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            _currentIndex = value;
            setState(() {});
          },
          children: const [HomePage(), PremiumPage(), QuranPage(), ZikirPage(), ProfilePage()],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            height: 1.6,
          ),
          unselectedItemColor: AppColors.black,
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11,
            height: 1.6,
          ),
          selectedItemColor: AppColors.blue,
          items: [
            BottomNavigationBarItem(
              label: "Башкы бет",
              icon: SvgPicture.asset(
                "assets/quran/svg/main/home.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 0 ? AppColors.blue : AppColors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/quran/svg/main/sms.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 1 ? AppColors.blue : AppColors.black,
              ),
              label: "Суроо_жооп",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/quran/svg/main/book.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 2 ? AppColors.blue : AppColors.black,
              ),
              label: "Куран",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/quran/svg/main/zikir.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 3 ? AppColors.blue : AppColors.black,
              ),
              label: "Зикир",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/quran/svg/main/user.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 4 ? AppColors.blue : AppColors.black,
              ),
              label: "Жеке кабинет",
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.bounceIn,
    );
  }
}
