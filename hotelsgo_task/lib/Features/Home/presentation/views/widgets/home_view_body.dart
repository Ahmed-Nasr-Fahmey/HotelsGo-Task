import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Core/widgets/custom_app_bar.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_detailes_card_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            HotelDetailsCardBuilder(),
            Positioned(
              top: 0,
              left: 8,
              child: CustomAppBar(),
            )
          ],
        ),
      ),
    );
  }
}
