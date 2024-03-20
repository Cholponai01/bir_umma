import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PikirPage extends StatefulWidget {
  const PikirPage({super.key});

  @override
  State<PikirPage> createState() => _PikirPageState();
}

class _PikirPageState extends State<PikirPage> {
  bool _isPressed = false;
  bool _isPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 450,
                  width: 380,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
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
                          Center(
                            child: SizedBox(
                              height: 320,
                              width: 300,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Пикирлер жана сунуштар',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                  onChanged: (value) {
                                    // Обработчик изменения текста
                                    print(value);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPressed = true;
                            _isPressed2 = false;
                          });
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
                          },
                          child: Text(
                            "Артка",
                            style: TextStyle(
                              fontSize: 20,
                              color: _isPressed ? Colors.blue : Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPressed2 = true;
                            _isPressed = false;
                            _showCustomDialog(context);
                          });
                        },
                        child: Text(
                          "Жөнөтүү",
                          style: TextStyle(
                            fontSize: 20,
                            color: _isPressed2 ? Colors.blue : Colors.grey.shade400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showCustomDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Icon(
            Icons.check_circle_outline,
            size: 50,
          ),
          content: SingleChildScrollView(
              child: Column(
            children: [
              const Text(
                "Ыраазычылык \nбилдиребиз!",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                textAlign: TextAlign.center,
                "Сиздин оюңуз биз үчүн\n маанилүү",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.blue, fontSize: 23),
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
// import 'package:flutter/material.dart';

// class PikirPage extends StatefulWidget {
//   const PikirPage({Key? key}) : super(key: key);

//   @override
//   _PikirPageState createState() => _PikirPageState();
// }

// class _PikirPageState extends State<PikirPage> {
//   bool _isPressed = false;
//   bool _isPressed2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Stack(
//               children: [
//                 SizedBox(
//                   height: 400,
//                   width: 300,
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                       color: Colors.blue[100],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                         left: 10,
//                         right: 10,
//                         top: 20,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Center(
//                             child: SizedBox(
//                               height: 280,
//                               width: 250,
//                               child: DecoratedBox(
//                                 decoration: BoxDecoration(
//                                   color: Colors.blue[50],
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 30,
//                   left: 0,
//                   right: 0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _isPressed = true;
//                             _isPressed2 = false;
//                           });
//                         },
//                         child: Text(
//                           "Артка",
//                           style: TextStyle(
//                             fontSize: 20,
//                             color:
//                                 _isPressed ? Colors.blue : Colors.grey.shade400,
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _isPressed2 = true;
//                             _isPressed = false;
//                             _showCustomDialog(context); // Показать диалог
//                           });
//                         },
//                         child: Text(
//                           "Жөнөтүү",
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: _isPressed2
//                                 ? Colors.blue
//                                 : Colors.grey.shade400,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Метод для показа диалога
//   Future<void> _showCustomDialog(BuildContext context) async {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Icon(
//             Icons.check_circle_outline,
//             size: 50,
//           ),
//           content: SingleChildScrollView(
//               child: Column(
//             children: [
//               const Text(
//                 "Ыраазычылык \nбилдиребиз!",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 15),
//               const Text(
//                 textAlign: TextAlign.center,
//                 "Сиздин оюңуз биз үчүн\n маанилүү",
//                 style: TextStyle(color: Colors.grey, fontSize: 18),
//               ),
//               const SizedBox(height: 15),
//               InkWell(
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text(
//                   "OK",
//                   style: TextStyle(color: Colors.blue, fontSize: 23),
//                 ),
//               ),
//             ],
//           )),
//         );
//       },
//     );
//   }
// }
