import 'package:bir_umma/features/main/presentation/widgets/icon_with_counter_widget.dart';
import 'package:flutter/material.dart';

class GusulPage extends StatefulWidget {
  const GusulPage({super.key});

  @override
  State<GusulPage> createState() => _GusulPageState();
}

class _GusulPageState extends State<GusulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Гусул',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/home/daarat/icon.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/home/daarat/voda.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Colors.grey,
                indent: 5,
                endIndent: 5,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconWithCounter(icon: Icons.favorite_border, counter: 210),
                    SizedBox(width: 25),
                    IconWithCounter(icon: Icons.visibility_outlined, counter: 1123),
                    SizedBox(width: 25),
                    IconWithCounter(icon: Icons.share_outlined, counter: 1644),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem Ipsum",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.   \nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
