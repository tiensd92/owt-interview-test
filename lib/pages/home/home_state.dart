import 'package:owt_interview_test/repositories/dtos/category_dto.dart';
import 'package:owt_interview_test/repositories/dtos/item_dto.dart';

class HomeState {
  const HomeState({
    this.categories = const [],
    this.items = const [],
    this.searchKeyWord,
  });

  final List<CategoryDTO> categories;

  final String? searchKeyWord;

  final List<ItemDTO> items;

  HomeState copyWith({
    List<CategoryDTO>? categories,
    String? searchKeyWord,
    List<ItemDTO>? items,
  }) {
    return HomeState(
      categories: categories ?? this.categories,
      searchKeyWord: searchKeyWord ?? this.searchKeyWord,
      items: items ?? this.items,
    );
  }
}
