import 'package:flutter/material.dart';
import 'item_menu_bottom.dart';


class BottomMenu extends StatelessWidget {
  const BottomMenu({ Key? key, required this.showMenu }) : super(key: key);

  final bool showMenu;

   @override
   Widget build(BuildContext context) {
       return AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: !showMenu
                  ? 0 + MediaQuery.of(context).padding.bottom
                  : 0, // para não ficar colada na parte inferior
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.14,
              child: IgnorePointer(
                ignoring: showMenu,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: !showMenu ? 1 : 0,
                  child: Container(
                      child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ItemMenuBottom(
                          icon: Icons.person_add, text: 'Indicar amigos'),
                      ItemMenuBottom(
                          icon: Icons.phone_android,
                          text: 'Recarga de celular'),
                      ItemMenuBottom(icon: Icons.chat, text: 'Cobrar'),
                      ItemMenuBottom(
                          icon: Icons.monetization_on, text: 'Empréstimos'),
                      ItemMenuBottom(
                          icon: Icons.move_to_inbox, text: 'Depositar'),
                      ItemMenuBottom(
                          icon: Icons.mobile_screen_share, text: 'Transfirir'),
                      ItemMenuBottom(
                          icon: Icons.format_align_center,
                          text: 'Ajustar limite'),
                      ItemMenuBottom(
                          icon: Icons.chrome_reader_mode, text: 'Pagar'),
                      ItemMenuBottom(
                          icon: Icons.lock_open, text: 'Bloquear cartão'),
                    ],
                  )),
                ),
              ));
  }
}