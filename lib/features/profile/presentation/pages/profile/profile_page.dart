import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(
                Icons.exit_to_app_rounded,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/profile/profile.png',
                  height: 80,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Аты-жөнү',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('+996700123456',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w500)),
                    Text('atyjonu@gmail.com',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SettingsWidget(
              text: 'Профильди оңдоо',
              icon: Icons.settings,
            ),
            const SettingsWidget(
              text: 'Баалаоо',
              icon: Icons.star_border_rounded,
            ),
            const SettingsWidget(
              text: 'Бөлүшүү',
              icon: Icons.share_outlined,
            ),
            const SettingsWidget(
              text: 'Сунуш-пикирлер',
              icon: Icons.error_outline,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatefulWidget {
  final String text;
  final IconData? icon;

  const SettingsWidget({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  // ignore: prefer_final_fields
  static List<_SettingsWidgetState> _pressedWidgets = [];

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
          _pressedWidgets.add(this);
          _updatePressedState();
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
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
              const SizedBox(width: 10),
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
    _pressedWidgets.forEach((widgetState) {
      if (widgetState != this) {
        widgetState.setState(() {
          widgetState._isPressed = false;
        });
      }
    });
  }
}
