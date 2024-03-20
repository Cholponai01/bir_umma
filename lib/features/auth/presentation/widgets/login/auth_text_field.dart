import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool? isPasswordField;
  // ignore: prefer_typing_uninitialized_variables
  final suffixIcon;

  const AuthTextField({
    super.key,
    required this.labelText,
    required this.obscureText,
    required this.suffixIcon,
    this.prefixIcon,
    this.isPasswordField,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          alignLabelWithHint: true,
          labelStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400, fontSize: 19),
          hoverColor: Colors.white,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false ? AppColors.black : AppColors.grey,
                    size: 24,
                  )
                : const Text(""),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: widget.prefixIcon,
          ),
        ),
      ),
    );
  }
}
