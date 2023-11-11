import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_class1.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_class2.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_class3.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_class4.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/hotel_class5.dart';

class FiltersHotelClass extends StatelessWidget {
  const FiltersHotelClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HotelClass1(),
          HotelClass2(),
          HotelClass3(),
          HotelClass4(),
          HotelClass5(),
        ],
      ),
    );
  }
}
