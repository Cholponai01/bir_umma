import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ZikirPage extends StatefulWidget {
  const ZikirPage({super.key});

  @override
  State<ZikirPage> createState() => _ZikirPageState();
}

class _ZikirPageState extends State<ZikirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Зикир"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/svg/zikir/burger_slider.svg",
              ),
              //SvgPicture.asset("asstes/svg/main/book.svg"),
              // InkWell(
              //   onTap: () {},
              //   child: SvgPicture.asset("asstes/svg/zikir/burger_slider.svg"),
              // ),
              Container(
                width: 200,
                height: 200,
                child: Column(
                  children: [
                    Text(" لا اله الا أنت سبحانك اني كنت من الظالمين"),
                    Text(
                        "Ля иляха илля Анта! Субханака, инни кунту мина-з-залимин!"),
                    Text(
                        "Нет Бога достойного поклонения, кроме Тебя, Пречист Ты, поистине, я был одним из несправедливых"),
                    SvgPicture.asset("asstes/svg/zikir/color.svg"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
