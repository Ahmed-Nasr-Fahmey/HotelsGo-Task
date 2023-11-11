import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Core/widgets/custom_main_button.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/filters_hotel_class.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/filters_location.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/filters_rating.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/min_max_price.dart';
import 'package:hotelsgo_task/constants.dart';

class FiltersBotttomSheetBody extends StatefulWidget {
  const FiltersBotttomSheetBody({
    super.key,
  });

  @override
  State<FiltersBotttomSheetBody> createState() =>
      _FiltersBotttomSheetBodyState();
}

class _FiltersBotttomSheetBodyState extends State<FiltersBotttomSheetBody> {
  double pricePerNight = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 60,
      decoration: const BoxDecoration(
        color: Constants.scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Constants.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      pricePerNight = 120;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: GoogleFonts.roboto(
                      color: Constants.blackColor.withOpacity(0.5),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                    ),
                  ),
                ),
                Text(
                  'Filters',
                  style: GoogleFonts.roboto(
                    color: Constants.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Constants.blackColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                'PRICE PER NIGHT',
                style: GoogleFonts.roboto(
                  color: Constants.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Constants.blackColor.withOpacity(0.3),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Text(
                    '${'$pricePerNight'.substring(0, 3)}+ \$',
                    style: GoogleFonts.roboto(
                      color: Constants.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Slider(
              value: pricePerNight,
              min: 20,
              max: 540,
              onChanged: (value) {
                setState(() {
                  pricePerNight = value;
                });
              },
              thumbColor: Constants.whiteColor,
              activeColor: Constants.secondColor,
            ),
          ),
          const MinMaxPrice(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'RATING',
              style: GoogleFonts.roboto(
                color: Constants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const FiltersRating(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'HOTEL CLASS',
              style: GoogleFonts.roboto(
                color: Constants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const FiltersHotelClass(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'DISTANCE FROM',
              style: GoogleFonts.roboto(
                color: Constants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const Divider(
            thickness: 2,
            indent: 16,
          ),
          const FiltersLocation(),
          const Divider(
            thickness: 2,
            indent: 16,
          ),
          const Spacer(),
          const CustomMainButton(),
        ],
      ),
    );
  }
}
