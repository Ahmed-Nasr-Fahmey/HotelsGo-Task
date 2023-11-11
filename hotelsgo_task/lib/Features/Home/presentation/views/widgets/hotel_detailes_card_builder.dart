import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo_task/Features/Home/presentation/manager/hotels%20cubit/hotels_cubit.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/custom_hotel_details_card.dart';

class HotelDetailsCardBuilder extends StatelessWidget {
  const HotelDetailsCardBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 80,
        child: ListView.builder(
          itemCount: BlocProvider.of<HotelsCubit>(context).hotels.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: HotelDetialsCard(
                  hotelModel:
                      BlocProvider.of<HotelsCubit>(context).hotels[index]),
            );
          },
        ),
      ),
    );
  }
}
