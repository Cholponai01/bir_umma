import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/question_answer/Lock.svg",
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Бул бөлүм жеткиликтүү эмес',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Жеткиликүү болушу үчүн төлөм\n аткарыңыз',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text('Төлөм аткаруу',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              )
              // fontFamily: 'LondrinaShadow-Regular'),
              ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Артка',
            style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
            // fontFamily: 'LondrinaShadow-Regular'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => context.pushRoute(const QuestionAndAnswerRoute()), child: const Text('Суроо берүү'))
        ],
      ),
    );
  }
}
