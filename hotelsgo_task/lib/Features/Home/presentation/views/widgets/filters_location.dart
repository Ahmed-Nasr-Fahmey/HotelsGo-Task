import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/constants.dart';

class FiltersLocation extends StatelessWidget {
  const FiltersLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'Location',
            style: GoogleFonts.roboto(
              color: Constants.blackColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            'City Center',
            style: GoogleFonts.roboto(
              color: Constants.blackColor.withOpacity(0.5),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: Constants.blackColor.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
