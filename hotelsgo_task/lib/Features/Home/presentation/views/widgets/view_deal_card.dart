import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Features/Home/data/models/Hotel%20Model/hotel_model.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/our_lowest_price.dart';
import 'package:hotelsgo_task/constants.dart';

class ViewDealCard extends StatelessWidget {
  const ViewDealCard({
    super.key,
    required this.hotelModel,
  });

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Constants.blackColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const OurLowestPrice(),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: GoogleFonts.roboto(
                          color: Constants.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '${hotelModel.price}',
                        style: GoogleFonts.roboto(
                          color: Constants.primaryColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Renaissance',
                    style: GoogleFonts.roboto(
                      color: Constants.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'View Deal',
                style: GoogleFonts.roboto(
                  color: Constants.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Constants.blackColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
