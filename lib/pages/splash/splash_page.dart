import 'package:flutter/material.dart';
import 'package:nubank/pages/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder:(BuildContext context, Animation animation, Animation secondaryAnimation){
        return const HomePage(); 
      }), 
      );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.asset(
          'assets/images/nubank-logo.png',
          height: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
