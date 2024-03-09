// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool? isPasswordField;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomPasswordFormField({
    super.key,
    required this.labelText,
    required this.obscureText,
    this.prefixIcon,
    this.isPasswordField,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.validator,
  });

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
            color: Colors.grey[700], fontWeight: FontWeight.w400, fontSize: 19),
        hoverColor: Colors.white,
        suffixIcon: widget.suffixIcon,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: widget.prefixIcon,
        ),
      ),
    );
  }
}
