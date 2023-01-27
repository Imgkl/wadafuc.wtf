import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wadafuc/utils/mouse_cursor.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool showIsLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCursorMouseRegion(
                child: DefaultTextStyle(
                  style: GoogleFonts.majorMonoDisplay(
                      fontSize: 250.0, color: Colors.black),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    totalRepeatCount: 0,
                    animatedTexts: [
                      TyperAnimatedText('WADAFUC',
                          speed: const Duration(milliseconds: 500)),
                    ],
                    onFinished: () {
                      setState(() {
                        showIsLoading = true;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30.0,
                  child: showIsLoading
                      ? AnimatedCursorMouseRegion(
                          child: Text('Currently in Dev',
                              style: GoogleFonts.sen(
                                  fontSize: 25.0, color: Colors.black)),
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
