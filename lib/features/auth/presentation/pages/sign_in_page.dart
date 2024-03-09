import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:bir_umma/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bir_umma/features/auth/presentation/widgets/custom_password_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool checkedValue = true;
  bool isChecked = false;

  void onHintext() {
    setState(() {
      checkedValue = !checkedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoaded) {
          context.pushRoute(const MainRoute());
        } else if (state is AuthError) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Эскертүү"),
                content: const Text("Жараксыз электрондук почта же сырсөз"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Кайра аракет кыл"),
                  ),
                ],
              );
            },
          );
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/png/LOGO.png'),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomPasswordFormField(
                          validator: _validateEmail,
                          controller: _emailController,
                          labelText: 'Email Адрес',
                          obscureText: false,
                          prefixIcon: const Icon(Icons.account_box),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomPasswordFormField(
                            validator: _validatePassword,
                            controller: _passwordController,
                            labelText: 'Сыр сөз',
                            isPasswordField: true,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: onHintext,
                              icon: checkedValue
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                            obscureText: checkedValue),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              value: isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                });
                              },
                            ),
                            Text(
                              'Эстеп калуу',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              final email = _emailController.text.trim();
                              final password = _passwordController.text.trim();
                              context.read<AuthCubit>().login(email, password);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3473E6),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: const Center(
                              child: Text(
                                'Кирүү',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Text(
                          'Сыр сөздү унуттуңузбу?',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () => context.router.push(const SignUpRoute()),
                          child: Text(
                            'КАТТАЛУУ',
                            style: TextStyle(
                                color: Colors.blue[500],
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('assets/icons/google.svg',
                                  width: 40, height: 40),
                              SvgPicture.asset('assets/icons/apple.svg',
                                  width: 40, height: 40),
                              SvgPicture.asset('assets/icons/facebook.svg',
                                  width: 40, height: 40),
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
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Сураныч, электрондук почтаңызды  жазыңыз";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Сураныч, сырсөзүңүздү жазыңыз";
    } else if (value.length < 6) {
      return "Сырсөз кеминде 6 белгиден турушу керек.";
    }
    return null;
  }
}
