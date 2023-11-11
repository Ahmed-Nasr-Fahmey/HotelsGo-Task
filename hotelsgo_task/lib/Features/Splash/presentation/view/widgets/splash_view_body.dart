import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Core/utils/assets.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/home_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1200,
        splashIconSize: 150,
        splash: Image.asset(
          AssetsData.logo,
          width: MediaQuery.of(context).size.width / 2,
        ),
        nextScreen: const HomeView(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
