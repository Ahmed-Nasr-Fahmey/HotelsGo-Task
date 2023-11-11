import 'package:flutter/material.dart';
import 'package:hotelsgo_task/constants.dart';

class HotelClass3 extends StatelessWidget {
  const HotelClass3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Constants.ratingColor,
          width: 2,
        ),
      ),
      child: const Center(
        child: Column(
          children: [
            Icon(
              Icons.star,
              color: Constants.ratingColor,
              size: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Constants.ratingColor,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Constants.ratingColor,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
