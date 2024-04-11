import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<String> styles,
    String? selectedStyle,
    required List<NearHouse> nearHouseList,
    required List<BestForYouHouse> bestForYouHouseList,
  }) = _HomeState;
}
