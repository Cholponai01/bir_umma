import 'package:bir_umma/features/zikir/presentation/widgets/league_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompetitionWidget extends StatelessWidget {
  const CompetitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: const Color(0xffE5E5E5),
                height: 2.0,
              )),
          title: const Text('Жарыш'),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/svg/zikir/gift.svg",
                ),
              ),
            ),
          ]),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 240,
                height: 140,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xffE7F1FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2- Лига",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )),
                        Text(
                          "1-лигага өтүү үчүн 1234 зикир калды",
                          //style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Апталык",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "3-Кун",
                          style: TextStyle(
                            //fontSize: 12,
                            color: Color(0xffFFB900),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 120,
                height: 140,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xffE7F1FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "1234",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    "АЛДЫНКЫЛАР",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff27B24A),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const LeagueWidget(
                number: 1,
                text: "1-opyн",
              ),
              const SizedBox(
                height: 20,
              ),
              const LeagueWidget(
                number: 2,
                text: "2-opyн",
              ),
              const SizedBox(
                height: 20,
              ),
              const LeagueWidget(
                number: 3,
                text: "3-opyн",
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
