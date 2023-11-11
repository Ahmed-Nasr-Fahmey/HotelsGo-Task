import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo_task/Core/utils/functions/custom_show_snackbar.dart';
import 'package:hotelsgo_task/Features/Home/presentation/manager/hotels%20cubit/hotels_cubit.dart';
import 'package:hotelsgo_task/Features/Home/presentation/manager/hotels%20cubit/hotels_states.dart';
import 'package:hotelsgo_task/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:hotelsgo_task/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HotelsCubit>(context).getHotels();
    return Scaffold(
      body: BlocBuilder<HotelsCubit, HotelsState>(
        builder: (context, state) {
          if (state is HotelsLoadingState) {
            return const Center(
              child: CircularProgressIndicator(color: Constants.secondColor),
            );
          } else if (state is HotelsSuccessState) {
            return const HomeViewBody();
          } else if (state is HotelsFaluerState) {
            customSnackBar(context, state.errorMessage);
            return const SizedBox();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
