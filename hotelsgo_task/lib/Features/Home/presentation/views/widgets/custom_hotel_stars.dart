import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotelsgo_task/Features/Home/data/models/Hotel%20Model/hotel_model.dart';

class CustomHotelStars extends StatelessWidget {
  const CustomHotelStars({
    super.key,
    required this.hotelModel,
  });

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      direction: Axis.horizontal,
      itemCount: hotelModel.starts,
      itemPadding: const EdgeInsets.all(0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
      ),
      itemSize: 18,
      onRatingUpdate: (value) {},
    );
  }
}
