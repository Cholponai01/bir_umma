import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PikirPage extends StatefulWidget {
  const PikirPage({super.key});

  @override
  State<PikirPage> createState() => _PikirPageState();
}

class _PikirPageState extends State<PikirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Намаз',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 320,
              width: 300,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Сиз?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset("assets/home/namaz/boy.png"),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                              onTap: () {},
                              child: Image.asset("assets/home/namaz/girl.png")),
                        ],
                      ),
                      const Row(
                        children: [Text("Эстеп калуу")],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Баштоо",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          elevation: 1,
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(double.infinity, 44),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
