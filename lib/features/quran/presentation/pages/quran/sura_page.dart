import 'package:flutter/material.dart';

class SuraPage extends StatefulWidget {
  const SuraPage({super.key});

  @override
  State<SuraPage> createState() => _SuraPageState();
}

class _SuraPageState extends State<SuraPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('VideoQuran Page')),
    );
  }
}
