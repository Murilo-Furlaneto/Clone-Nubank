import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/gift-outline.svg',
              color: Colors.grey, semanticsLabel: 'gift'),
          Column(
            children:  [
             const Text(
                'Nubank Rewards',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              const SizedBox(height: 15,),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aereas ou serviços que você realmente usa',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  width: 0.7,
                  color: const Color.fromRGBO(106, 27, 154, 1),
                )),
            child: ElevatedButton(
    
              onPressed: () {},
              child: const Text('ATIVE O SEU REWARDS', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(106, 27, 154, 1), fontSize: 14),),
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Color.fromRGBO(106, 27, 154, 1),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
