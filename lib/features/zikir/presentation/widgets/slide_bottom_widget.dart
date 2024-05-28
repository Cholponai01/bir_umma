import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideBottomWidget extends StatefulWidget {
  const SlideBottomWidget({super.key});

  @override
  SlideBottomWidgetState createState() => SlideBottomWidgetState();
}

class SlideBottomWidgetState extends State<SlideBottomWidget> {
  bool isSliderOpen = false;

  @override
  Widget build(BuildContext context) {
    String sliderImagePath = isSliderOpen ? "assets/svg/zikir/slideback.svg" : "assets/svg/zikir/slider.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isSliderOpen = !isSliderOpen;
            });
          },
          child: SvgPicture.asset(
            sliderImagePath,
            colorFilter: ColorFilter.mode(isSliderOpen ? Colors.blue : Colors.black, BlendMode.srcIn),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Visibility(
          visible: isSliderOpen,
          child: SizedBox(
            width: 310,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Add your additional icons or widgets here
                // Example:
                SvgPicture.asset(
                  "assets/svg/zikir/sound.svg",
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/svg/zikir/color.svg",
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/svg/zikir/rosary.svg",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
