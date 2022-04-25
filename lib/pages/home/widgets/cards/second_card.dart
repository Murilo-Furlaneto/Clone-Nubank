import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  State<SecondCard> createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard>
    with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false; // variavel que mostra o saldo disponivel

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Text('Conta',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              )),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showSaldo = !_showSaldo;
                          });
                        },
                        child: SvgPicture.asset(
                            !_showSaldo
                                ? 'assets/icons/eye-off-outline.svg'
                                : 'assets/icons/eye-outline.svg',
                            color: Colors.grey,
                            semanticsLabel: 'eye'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Saldo disponível',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        _showSaldo
                            ? const Text.rich(
                                TextSpan(text: 'R\$ 2.500,00'),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                ),
                              )
                            : Container(
                                height: 32,
                                width: 160,
                                color: Colors.grey[300],
                              ), //tampa o saldo
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.credit_card,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                          // utilizado para quebrar linha
                          child: Text(
                              'Compra mais recente em Casa da Construção no valor de R\$ 150,00 sexta',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey))),
                      Icon(Icons.chevron_right, color: Colors.black, size: 18),
                    ]),
              ),
              color: Colors.grey[200],
            )),
      ]),
    );
  }

  @override
  bool get wantKeepAlive =>
      true; // mantém o estado do container, caso estiver com o saldo visível, e o usuario for para outro card, o valor permanece a mostra
}
