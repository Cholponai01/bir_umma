import 'package:flutter/material.dart';

class LeagueWidget extends StatelessWidget {
  final int number;
  final String text;
  const LeagueWidget({
    super.key,
    required this.text,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 110,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xffE7F1FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              number.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Column(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Аты-Жону",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Text(
                  "123456",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: const Color.fromARGB(255, 12, 12, 12).withOpacity(0.6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 10),
                  child: SizedBox(
                    width: 87,
                    height: 24,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xffFFAC33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset("assets/svg/zikir/avatar.png")
          ],
        ),
      ),
    );
  }
}
