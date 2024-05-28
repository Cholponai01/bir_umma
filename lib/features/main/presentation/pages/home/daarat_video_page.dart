import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/main/presentation/widgets/icon_with_counter_widget.dart';
import 'package:flutter/material.dart';

class DaaratVideoPage extends StatefulWidget {
  const DaaratVideoPage({super.key});

  @override
  State<DaaratVideoPage> createState() => _DaaratVideoPageState();
}

class _DaaratVideoPageState extends State<DaaratVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/home/daarat/icon.png",
              height: 35,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/home/daarat/daarat2.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 120,
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
                    top: 250,
                    left: 80,
                    child: Text(
                      "Даарат алуу боюнча кыска...",
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
        ),
      ),
    );
  }

  // PreferredSize _appBar() {
  //   return PreferredSize(
  //     preferredSize: Size.fromHeight(280),
  //     child: Container(
  //       decoration: _decoration(),
  //       child: SafeArea(
  //         child: Column(
  //           children: [
  //             _topBar(),
  //             // SizedBox(
  //             //   height: 5,
  //             // ),
  //             // _searchBox(),
  //             // _tabBar(),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // BoxDecoration _decoration() {
  //   return BoxDecoration(
  //     borderRadius: BorderRadius.vertical(
  //       bottom: Radius.circular(10),
  //     ),
  //   );
  // }

  // Widget _topBar() {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Image.asset(
  //           "assets/home/daarat/voda.png",
  //           width: double.infinity,
  //           fit: BoxFit.cover,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
