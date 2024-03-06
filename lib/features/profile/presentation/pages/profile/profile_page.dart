import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/profile/presentation/widgets/profile/settings_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: const Icon(Icons.exit_to_app_rounded),
              color: Colors.red,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/user.jpg',
                  width: 65,
                  height: 65,
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
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold)),
                    Text('atyjonu@gmail.com',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffE5E5E5),
                            fontWeight: FontWeight.bold)),
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
              text: 'Баалоо',
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
