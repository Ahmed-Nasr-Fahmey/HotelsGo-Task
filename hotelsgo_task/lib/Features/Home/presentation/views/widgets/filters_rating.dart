
import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/rate_card.dart';

class FiltersRating extends StatelessWidget {
  const FiltersRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RateCard(
            text: '0+',
            color: Color(0xffdb3734),
          ),
          RateCard(
            text: '7+',
            color: Color(0xfffc9e15),
          ),
          RateCard(
            text: '7.5+',
            color: Color(0xff62a30f),
          ),
          RateCard(
            text: '8+',
            color: Color(0xff028000),
          ),
          RateCard(
            text: '8.5+',
            color: Color(0xff005f00),
          ),
        ],
      ),
    );
  }
}
