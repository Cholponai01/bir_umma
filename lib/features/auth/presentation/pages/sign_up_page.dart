import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
import 'package:bir_umma/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bir_umma/features/auth/presentation/widgets/custom_password_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool checkedValue = true;

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
          context.pushRoute(const SignInRoute());
        } else if (state is AuthError) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Эскертүү"),
                content: Text(state.message),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.popRoute();
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
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/png/LOGO.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomPasswordFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: _validateEmail,
                          controller: _emailController,
                          labelText: 'Email же тел.номер',
                          obscureText: false,
                          prefixIcon: const Icon(Icons.email),
                          suffixIcon: null,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomPasswordFormField(
                            keyboardType: TextInputType.text,
                            validator: _validatePassword,
                            controller: _passwordController,
                            labelText: 'Сыр сөз',
                            prefixIcon: const Icon(Icons.lock),
                            isPasswordField: true,
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
                        CustomPasswordFormField(
                            keyboardType: TextInputType.text,
                            validator: _validatePassword,
                            controller: _confirmPasswordController,
                            labelText: 'Сыр сөзду кайталап жазыңыз',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: onHintext,
                              icon: checkedValue
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                            isPasswordField: true,
                            obscureText: checkedValue),
                        const SizedBox(
                          height: 150,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              final email = _emailController.text.trim();
                              final password = _passwordController.text.trim();
                              context
                                  .read<AuthCubit>()
                                  .register(email, password);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3473E6),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: const Center(
                              child: Text(
                                'Катталуу',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
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
    } else if (value != _confirmPasswordController.text.trim()) {
      return 'Сырсөз дал келбейт';
    }
    return null;
  }
}
