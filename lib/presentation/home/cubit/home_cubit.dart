import 'package:bts/local/usecase/house/get_house_best_for_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_near_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_types_usecase.dart';
import 'package:bts/presentation/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  final GetHouseTypesUseCase getHouseTypesUseCase;
  final GetHouseNearYouUseCase getHouseNearYouUseCase;
  final GetHouseBestForYouUseCase getHouseBestForYouUseCase;

  HomeCubit(
    this.getHouseTypesUseCase,
    this.getHouseNearYouUseCase,
    this.getHouseBestForYouUseCase,
  ) : super(const HomeState(styles: [], nearHouseList: [], bestForYouHouseList: []));

  onInit() {
    getStyles();
    getHouseNearYou();
    getHouseBestForYou();
  }

  getStyles() async {
    final result = await getHouseTypesUseCase();
    result.fold((l) => print("error"), (typeList) {
      emit(state.copyWith(
        styles: typeList,
        selectedStyle: typeList.first,
      ));
    });
  }

  getHouseNearYou() async {
    final result = await getHouseNearYouUseCase();
    result.fold((l) => print("error"), (housesNearYou) {
      emit(state.copyWith(
        nearHouseList: housesNearYou,
      ));
    });
  }

  getHouseBestForYou() async {
    final result = await getHouseBestForYouUseCase();
    result.fold((l) => print("error"), (bestForYouHouseList) {
      emit(state.copyWith(bestForYouHouseList: bestForYouHouseList));
    });
  }

  onStyleChanged(String newStyle) {
    emit(state.copyWith(selectedStyle: newStyle));
  }
}
