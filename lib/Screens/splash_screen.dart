
import 'package:flutter/material.dart';

import '../widget/Bottom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigatehome();
    super.initState();
  }

  _navigatehome() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavBar(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 28),
          child: Image(
            image: AssetImage(
              'assets/images/MusicAppLogo.png',
            ),
          ),
        ),
      ),
    );
  }
}

    // return AnimatedSplashScreen(
    //     splash: const Scaffold(
    //       body: Center(
    //         child: Padding(
    //           padding: EdgeInsets.only(left: 28),
    //           child: Image(
    //             image: AssetImage(
    //               'assets/images/MusicAppLogo.png',
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     nextScreen: BottomNavBar(),
    //     splashIconSize: 1000,
    //     duration: 3000,
    //     splashTransition: SplashTransition.scaleTransition,
    //     backgroundColor: Colors.black);
