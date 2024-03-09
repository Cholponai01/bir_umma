import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  const SettingsWidget({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  static final List<_SettingsWidgetState> _pressedWidgets = [];

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      // onTapDown: (_) {
      //   setState(() {
      //     _isPressed = true;
      //     _pressedWidgets.add(this);
      //     _updatePressedState();
      //   });
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) =>
      //           const PikirPage(), // Замените NextPage на ваш класс следующей страницы
      //     ),
      //   );
      // },
      // onTapCancel: () {
      //   setState(() {
      //     _isPressed = false;
      //   });
      // },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 40,
          decoration: BoxDecoration(
            color: _isPressed ? const Color(0xffFFDB7F) : null,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: _isPressed ? Colors.black : null,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16,
                  color: _isPressed ? Colors.black : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updatePressedState() {
    for (var widgetState in _pressedWidgets) {
      if (widgetState != this) {
        widgetState.setState(() {
          widgetState._isPressed = false;
        });
      }
    }
  }
}
