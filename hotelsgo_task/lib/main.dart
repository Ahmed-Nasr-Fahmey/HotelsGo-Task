import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo_task/Features/Home/presentation/manager/hotels%20cubit/hotels_cubit.dart';
import 'package:hotelsgo_task/Features/Splash/presentation/view/splash_view.dart';
import 'package:hotelsgo_task/constants.dart';

void main() {
  runApp(const HotelsGOTask());
}

class HotelsGOTask extends StatelessWidget {
  const HotelsGOTask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        theme: ThemeData(
          scaffoldBackgroundColor: Constants.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
