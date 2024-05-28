import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/router/router.dart';
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
        leading:
            IconButton(onPressed: () => context.router.push(const MainRoute()), icon: const Icon(Icons.arrow_back)),
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
                    Text('Аты-жөнү', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600)),
                    Text('+996700123456',
                        style: TextStyle(fontSize: 14, color: Colors.black26, fontWeight: FontWeight.w500)),
                    Text('atyjonu@gmail.com',
                        style: TextStyle(fontSize: 14, color: Colors.black26, fontWeight: FontWeight.w500)),
                  ],
                ),
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
            GestureDetector(
              onTap: () => context.router.push(const PikirRoute()),
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
