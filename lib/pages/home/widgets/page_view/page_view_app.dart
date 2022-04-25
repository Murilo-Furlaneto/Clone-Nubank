import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/cards/third_card.dart';

import '../cards/card_app.dart';
import '../cards/first_card.dart';
import '../cards/second_card.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp(
      {Key? key,
      required this.top,
      required this.onChanged,
      required this.onPanUdpdate,
      required this.showMenu})
      : super(key: key);

  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUdpdate;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      //card
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUdpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          children: const [
            CardApp(child: FirstCard()),
            CardApp(child: SecondCard()),
            CardApp(child: ThirdCard()),
          ],
        ),
      ),
    );
  }
}
