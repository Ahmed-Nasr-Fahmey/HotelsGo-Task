import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo_task/Core/utils/api_service.dart';
import 'package:hotelsgo_task/Features/Home/data/models/Hotel%20Model/hotel_model.dart';
import 'package:hotelsgo_task/Features/Home/presentation/manager/hotels%20cubit/hotels_states.dart';

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit() : super(HotelsInitialState());
  List<HotelModel> hotels = [];

  Future<void> getHotels() async {
    List<dynamic> hotelsJsonData;
    emit(HotelsLoadingState());
    try {
      hotelsJsonData = await ApiService(Dio()).getHotels();
      for (var hotel in hotelsJsonData) {
        hotels.add(HotelModel.fromJson(hotel));
      }
      emit(HotelsSuccessState());
    } catch (e) {
      emit(HotelsFaluerState(errorMessage: e.toString()));
    }
  }
}
