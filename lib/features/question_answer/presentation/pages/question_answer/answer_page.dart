import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnswerPage extends StatefulWidget {
  const AnswerPage({super.key});

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  List<bool> selectedIndex = List.generate(100, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            )),
        title: const Text(
          'Суроо-жооп',
          style: TextStyle(color: Color.fromARGB(255, 132, 127, 127), fontWeight: FontWeight.w600, fontSize: 20),
        ),
        elevation: 2,
        shadowColor: Colors.grey,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'dffdfdffdfmammam   shshsbdbdb',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  selectedIndex[index] = !selectedIndex[index];
                                });
                              },
                              icon: selectedIndex[index]
                                  ? const Icon(Icons.clear)
                                  : const Icon(Icons.keyboard_arrow_down))
                        ],
                      ),
                      Visibility(
                        visible: selectedIndex[index],
                        child: const Column(
                          children: [
                            Divider(
                              color: Colors.black54,
                            ),
                            Text(
                                'dffdfdffdfmam   shshdbbna  fgfgbefbdbdcbb  hdhhdsh  dfdggddhdh  jdddddddddddd  fhfhhfhfh  hdhhfhfhjf   dhffhhfh'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 20,
          ),
        ),
      ),
    );
  }
}
