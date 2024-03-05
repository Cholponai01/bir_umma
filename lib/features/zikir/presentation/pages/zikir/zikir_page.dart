import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/competition.dart';
import '../../widgets/slide_bottom_widget.dart';
import '../../widgets/zikir_bottom_widget.dart';

@RoutePage()
class ZikirPage extends StatefulWidget {
  const ZikirPage({super.key});

  @override
  State<ZikirPage> createState() => _ZikirPageState();
}

class _ZikirPageState extends State<ZikirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: const Color(0xffE5E5E5),
              height: 2.0,
            )),
        title: const Text("Зикир"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.5,
              color: Color.fromRGBO(232, 226, 226, 1),
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ZikirBottomWidget(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/svg/zikir/burger_slider.svg",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 270,
                  height: 170,
                  child: const Column(
                    children: [
                      Text(
                        " لا اله الا أنت سبحانك اني كنت من الظالمين",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Ля иляха илля Анта! Субханака, инни кунту мина-з-залимин!",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Нет Бога достойного поклонения, кроме Тебя, Пречист Ты, поистине, я был одним из несправедливых",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompetitionWidget()));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/zikir/cup.svg",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 250,
              //height: 100,
              //color: const Color.fromARGB(255, 212, 193, 193),
              child: Image.asset("assets/svg/zikir/count.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 20,
              height: 30,
            ),
            SlideBottomWidget(),
          ],
        ),
      ),
    );
  }
}
