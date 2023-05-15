import 'dart:async';

import 'package:festival_post_app/utils/utils_routes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class festivalsplashscreen extends StatefulWidget {
  const festivalsplashscreen({Key? key}) : super(key: key);

  @override
  State<festivalsplashscreen> createState() => _festivalsplashscreenState();
}

class _festivalsplashscreenState extends State<festivalsplashscreen> {
  double scal = 1;
  double trax = 1;
  double tray = 1;

  FlutterLogoStyle aniestyle = FlutterLogoStyle.markOnly;

  void changeScreen() {
    Timer.periodic(
      const Duration(seconds: 5), (timer) {
        setState(() {
          aniestyle = FlutterLogoStyle.horizontal;
        });
        Navigator.of(context).pushReplacementNamed(allroutes.homepage);
        timer.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // const Spacer(flex: 1),
            Center(
              child: SpinKitWaveSpinner(
                size: 350,
                // color: Colors.indigoAccent,
                // curve: Curves.easeInOutQuart.flipped,
                // trackColor: Colors.white,
                color: Colors.lime.withOpacity(0.5),
                waveColor: Colors.amber.withOpacity(0.2),
                trackColor: Colors.deepOrange.withOpacity(0.3),
              ),
            ),
            // const Spacer(),
            Row(
              children: [
                const SizedBox(width: 55),
                Column(
                  children: [
                    const SizedBox(height: 272),
                    Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/gif/People celebrating Holi Festival.gif"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                    SpinKitDancingSquare(color: Colors.deepOrange.withOpacity(0.3),),
                  ],
                ),
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
