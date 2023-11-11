import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Features/Home/data/models/Hotel%20Model/hotel_model.dart';
import 'package:hotelsgo_task/constants.dart';

class CustomHotelReview extends StatelessWidget {
  const CustomHotelReview({
    super.key,
    required this.hotelModel,
  });

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Constants.primaryColor,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Text(
                '${hotelModel.reviewScore}',
                style: GoogleFonts.roboto(
                  color: Constants.whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          hotelModel.review,
          style: GoogleFonts.roboto(
            color: Constants.blackColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Icon(
          Icons.location_on,
          size: 18,
          color: Constants.blackColor.withOpacity(0.5),
        ),
        Text(
          hotelModel.address,
          style: GoogleFonts.roboto(
            color: Constants.blackColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
