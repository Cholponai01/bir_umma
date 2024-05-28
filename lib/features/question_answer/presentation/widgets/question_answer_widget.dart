import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QuestionAndAnswerWidget extends StatelessWidget {
  const QuestionAndAnswerWidget({
    super.key,
    required this.text,
    this.onTap,
    this.icon,
  });
  final String text;
  final Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grey, width: 2),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.grey),
                )
              ],
            )),
      ),
    );
  }
}
