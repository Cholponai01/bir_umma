import 'package:bir_umma/features/main/presentation/pages/home/namaz_ubaktary_page.dart';
import 'package:flutter/material.dart';

class NamazPage extends StatefulWidget {
  const NamazPage({super.key});

  @override
  State<NamazPage> createState() => _NamazPageState();
}

class _NamazPageState extends State<NamazPage> {
  bool checkedValue = false;
  int selectedImageIndex = -1;
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
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 0;
                              });
                            },
                            child: SizedBox(
                                child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: selectedImageIndex == 0 ? Colors.blue : Colors.transparent,
                                ),
                              ),
                              child: Image.asset("assets/home/namaz/boy.png"),
                            )),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedImageIndex = 1;
                              });
                            },
                            child: SizedBox(
                                child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: selectedImageIndex == 1 ? Colors.red : Colors.transparent,
                                ),
                              ),
                              child: Image.asset("assets/home/namaz/girl.png"),
                            )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // ignore: prefer_const_constructors
                            side: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            visualDensity: const VisualDensity(
                              horizontal: -1,
                              vertical: -1,
                            ),
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            value: checkedValue,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue = newValue!;
                              });
                            },
                          ),
                          const Text("Эстеп калуу")
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const NamazUbaktary()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          elevation: 1,
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(double.infinity, 44),
                        ),
                        child: const Text(
                          "Баштоо",
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
