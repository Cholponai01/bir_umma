import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:bir_umma/features/question_answer/presentation/widgets/show_send_sms.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

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
              Icons.keyboard_arrow_left,
              size: 35,
            )),
        title: const Text(
          'Суроо-жооп',
          style: TextStyle(color: Color.fromARGB(255, 132, 127, 127), fontWeight: FontWeight.w600, fontSize: 20),
        ),
        elevation: 2,
        shadowColor: Colors.grey,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 16,
          right: 16,
        ),
        child: SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue.withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Тема:',
                          hintStyle: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w600)),
                      maxLines: 1,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Сурооңузду жазыңыз',
                      ),
                      maxLines: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showSendSms(context);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(45),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          'Жиберүү',
                          style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
                        )),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
