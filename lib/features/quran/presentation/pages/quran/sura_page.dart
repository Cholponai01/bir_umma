import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuraPage extends StatefulWidget {
  const SuraPage({super.key});

  @override
  State<SuraPage> createState() => _SuraPageState();
}

class _SuraPageState extends State<SuraPage> {
  int selectedButtonIndex = -1;

  @override
  Widget build(BuildContext context) {
    bool isTrailingVisible = selectedButtonIndex == 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuranPage(),
              ),
            );
          },
        ),
        title: const Text(
          'Куран',
          style: TextStyle(color: AppColors.black, fontSize: 18),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, color: AppColors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 35, right: 24),
            child: SizedBox(
              height: 35,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton(0, "Сүрөлөр"),
                    buildButton(1, "Хадистер"),
                    buildButton(2, "Сакталган"),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: ListView.builder(
                  itemCount: getListItemCount(selectedButtonIndex),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: SvgPicture.asset("assets/svg/zikir/1.svg"),
                      title: const Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: isTrailingVisible
                          ? const Icon(Icons.bookmark_outline)
                          : null,
                    );
                  }))
        ],
      ),
    );
  }

  Widget buildButton(int index, String text) {
    bool isSelected = selectedButtonIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedButtonIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 21, top: 5, right: 21, bottom: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  int getListItemCount(int selectedIndex) {
    if (selectedIndex == 0) {
      return 7;
    } else if (selectedIndex == 1) {
      return 5;
    } else if (selectedIndex == 2) {
      return 3;
    } else {
      return 0;
    }
  }
}
