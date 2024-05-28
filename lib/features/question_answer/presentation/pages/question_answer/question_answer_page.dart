// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:bir_umma/features/question_answer/presentation/widgets/widget.dart';
import 'package:flutter/material.dart';

import 'package:bir_umma/config/theme/app_colors.dart';

@RoutePage()
class QuestionAndAnswerPage extends StatelessWidget {
  const QuestionAndAnswerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(
              Icons.clear,
              size: 30,
            )),
        title: const Text(
          'Суроо-жооп',
          style: TextStyle(color: Color.fromARGB(255, 132, 127, 127), fontWeight: FontWeight.w600, fontSize: 20),
        ),
        elevation: 2,
        shadowColor: Colors.grey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionAndAnswerWidget(
              onTap: () => context.pushRoute(const QuestionRoute()),
              text: 'Суроо берүү',
              icon: Icons.border_color_outlined,
            ),
            const SizedBox(
              height: 20,
              // body: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Center(
              //       child: SvgPicture.asset(
              //         "assets/question_answer/Lock.svg",
            ),
            QuestionAndAnswerWidget(
                onTap: () => context.pushRoute(const AnswerRoute()), text: 'Жооптор', icon: Icons.mail_outline)
          ],
        ),
      ),
    );
  }
}
