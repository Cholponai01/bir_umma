import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:bir_umma/features/auth/presentation/widgets/login/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool checkedValue = false;

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
              const AuthTextField(
                labelText: 'Аты-жөнү',
                obscureText: false,
                suffixIcon: null,
                prefixIcon: Icon(Icons.account_box),
              ),
              const SizedBox(
                height: 10,
              ),
              const AuthTextField(
                  labelText: 'Сыр сөз',
                  isPasswordField: true,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  obscureText: true),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 20),
                child: Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // ignore: prefer_const_constructors
                      side: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      visualDensity: const VisualDensity(
                        horizontal: -1,
                        vertical: -1,
                      ),
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                    ),
                    Text(
                      'Эстеп калуу',
                      style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500, fontSize: 17),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => context.router.push(const MainRoute()),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3473E6),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: const Center(
                    child: Text(
                      'Кирүү',
                      style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                'Сыр сөздү унутутуңузбу?',
                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(height: 120),
              GestureDetector(
                onTap: () => context.router.push(const SignUpRoute()),
                child: Text(
                  'КАТТАЛУУ',
                  style: TextStyle(color: Colors.blue[500], fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 14,
                        thickness: 0.7,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'же',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 14,
                        thickness: 0.7,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/google.svg', width: 40, height: 40),
                    SvgPicture.asset('assets/icons/apple.svg', width: 40, height: 40),
                    SvgPicture.asset('assets/icons/facebook.svg', width: 40, height: 40),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: GestureDetector(
                  onTap: () => context.router.push(const MainRoute()),
                  child: Text(
                    'Пропустить',
                    style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
