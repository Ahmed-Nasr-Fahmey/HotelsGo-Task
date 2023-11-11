import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/sort_options_builder.dart';
import 'package:hotelsgo_task/constants.dart';

class SortBottomSheetBody extends StatelessWidget {
  const SortBottomSheetBody({super.key});

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
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Sort by',
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
          const SortOptionsBuilder(),
        ],
      ),
    );
  }
}
