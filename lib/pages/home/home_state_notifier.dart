import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:owt_interview_test/core/di/locator.dart';
import 'package:owt_interview_test/pages/home/home_state.dart';
import 'package:owt_interview_test/repositories/delivery_repository.dart';

final homeStateProvider =
    StateNotifierProvider.autoDispose<HomeStateNotifier, HomeState>(
  ((ref) => HomeStateNotifier(getIt.get<DeliveryRepository>())),
);

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier(this._repository) : super(const HomeState()) {
    getListCategory();
  }

  final DeliveryRepository _repository;

  Future<void> fetchItemsByKeyword(String keyword) async {
    state = state.copyWith(
      searchKeyWord: keyword,
    );
    final result = await _repository.fetchItemsByKeyword(keyword: keyword);
    state = state.copyWith(items: result);
  }

  Future<void> getListCategory() async {
    final result = await _repository.fetchCategories();
    state = state.copyWith(categories: result);
  }
}
