import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/Core/utils/assets.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/filters_bottom_sheet_body.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/sort_bottom_sheet_body.dart';
import 'package:hotelsgo_task/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * 8,
      height: 80,
      decoration: const BoxDecoration(
        color: Constants.whiteColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Constants.scaffoldBackgroundColor,
            spreadRadius: 10,
            blurRadius: 50,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          const Spacer(),
          Image.asset(
            AssetsData.filterIcon,
            width: 32,
          ),
          TextButton(
            onPressed: () {
              _displayFiltersBottomSheet(context);
            },
            child: Text(
              'Filters',
              style: GoogleFonts.roboto(
                color: Constants.secondColor,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            AssetsData.sortIcon,
            width: 32,
          ),
          TextButton(
            onPressed: () {
              _displaySortBottomSheet(context);
            },
            child: Text(
              'Sort',
              style: GoogleFonts.roboto(
                color: Constants.secondColor,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Future _displayFiltersBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      context: context,
      builder: (context) {
        return const FiltersBotttomSheetBody();
      },
    );
  }

  Future _displaySortBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      context: context,
      builder: (context) {
        return const SortBottomSheetBody();
      },
    );
  }
}
