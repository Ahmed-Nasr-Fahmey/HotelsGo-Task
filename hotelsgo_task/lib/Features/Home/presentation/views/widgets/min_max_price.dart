import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/constants.dart';

class MinMaxPrice extends StatelessWidget {
  const MinMaxPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Text(
            '\$20',
            style: GoogleFonts.roboto(
              color: Constants.blackColor.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            '\$540',
            style: GoogleFonts.roboto(
              color: Constants.blackColor.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
