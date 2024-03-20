import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:bir_umma/features/auth/presentation/widgets/login/auth_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/logo.jpg'),
              const SizedBox(
                height: 25,
              ),
              const AuthTextField(
                labelText: 'Email же тел.номер',
                obscureText: false,
                prefixIcon: Icon(Icons.email),

                // SvgPicture.asset('assets/icons/mail.svg',
                //     fit: BoxFit.scaleDown),
                suffixIcon: null,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextField(
                labelText: 'Аты-жөнү',
                obscureText: false,
                prefixIcon: Icon(Icons.account_box),
                // SvgPicture.asset('assets/icons/user.svg',
                //     fit: BoxFit.scaleDown),
                suffixIcon: null,
              ),
              const SizedBox(
                height: 10,
              ),
              const AuthTextField(
                  labelText: 'Сыр сөз',
                  prefixIcon: Icon(Icons.lock),
                  isPasswordField: true,
                  suffixIcon: Icon(Icons.visibility_off),
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              const AuthTextField(
                  labelText: 'Сыр сөзду кайталап жазыңыз',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  isPasswordField: true,
                  obscureText: true),
              const SizedBox(
                height: 210,
              ),
              GestureDetector(
                onTap: () => context.router.push(const SignInRoute()),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3473E6),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: const Center(
                    child: Text(
                      'Катталуу',
                      style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
