import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/pikir_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              ), // ваша иконка
              onPressed: () {
                // обработчик нажатия на иконку
              },
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
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const PikirPage(),
                //   ),
                // );
                context.router.push(PikirRoute());
              },
              child: const SettingsWidget(
                text: 'Сунуш-пикирлер',
                icon: Icons.error_outline,
              ),
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
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
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
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 40,
          decoration: BoxDecoration(
            color: _isPressed ? Color(0xffFFDB7F) : null,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: _isPressed ? Colors.black : null,
              ),
              SizedBox(
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
    _pressedWidgets.forEach((widgetState) {
      if (widgetState != this) {
        widgetState.setState(() {
          widgetState._isPressed = false;
        });
      }
    });
  }
}
