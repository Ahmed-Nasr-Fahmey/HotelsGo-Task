abstract class HotelsState {}

class HotelsInitialState extends HotelsState {}

class HotelsLoadingState extends HotelsState {}

class HotelsSuccessState extends HotelsState {}

class HotelsFaluerState extends HotelsState {
  String errorMessage;
  HotelsFaluerState({required this.errorMessage});
}
