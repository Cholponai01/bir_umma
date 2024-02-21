import 'package:flutter/material.dart';

class IconWithCounter extends StatelessWidget {
  final IconData icon;
  final int counter;

  const IconWithCounter({
    Key? key,
    required this.icon,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(
          '$counter',
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
