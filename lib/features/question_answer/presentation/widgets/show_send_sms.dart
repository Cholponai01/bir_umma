import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

Future<void> showSendSms(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(16),
        backgroundColor: AppColors.white,
        content: SizedBox(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/png/check-circle.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Билдирүү \nжиберилди',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  color: AppColors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              TextButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  child: const Text(
                    'ОK',
                    style: TextStyle(color: AppColors.blue, fontSize: 20, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      );
    },
  );
}
