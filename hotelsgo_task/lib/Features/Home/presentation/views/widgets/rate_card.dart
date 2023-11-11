import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/constants.dart';

class RateCard extends StatelessWidget {
  const RateCard({
    super.key,
    this.color,
    required this.text,
  });
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.roboto(
            color: Constants.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
