import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Features/Home/data/models/Hotel%20Model/hotel_model.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/custom_hotel_review.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/custom_hotel_stars.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/custom_love_icon.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/view_deal_card.dart';
import 'package:hotelsgo_task/constants.dart';

class HotelDetialsCard extends StatelessWidget {
  const HotelDetialsCard({
    super.key,
    required this.hotelModel,
  });

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width + 24,
        decoration: BoxDecoration(
          color: Constants.whiteColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Constants.blackColor.withOpacity(0.3),
              spreadRadius: 10,
              blurRadius: 50,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.network(
                    hotelModel.image,
                    height: MediaQuery.of(context).size.width / 3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 16,
                  right: 16,
                  child: CustomLoveIcon(),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                CustomHotelStars(hotelModel: hotelModel),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Hotel',
                  style: GoogleFonts.roboto(
                    color: Constants.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                hotelModel.name,
                style: GoogleFonts.roboto(
                  color: Constants.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomHotelReview(hotelModel: hotelModel),
            ViewDealCard(hotelModel: hotelModel),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'More prices',
                    style: GoogleFonts.roboto(
                      color: Constants.blackColor.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
