import 'dtos/dtos.dart';

abstract class DeliveryRepository {
  Future<List<CategoryDTO>> fetchCategories();

  Future<List<ItemDTO>> fetchItemsByKeyword({String keyword = ''});

  Future<List<ItemDTO>> fetchItemsByCategory({
    required int categoryId,
    String? keyword,
  });

  Future<DetailItemDTO> fetchDetailItem({required int itemId});
}

class DeliveryRepositoryImpl extends DeliveryRepository {
  @override
  Future<List<CategoryDTO>> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 1));
    return CategoryDTO.mocks();
  }

  @override
  Future<List<ItemDTO>> fetchItemsByKeyword({String keyword = ''}) async {
    await Future.delayed(const Duration(seconds: 1));
    if (keyword.isEmpty) {
      return ItemDTO.mocks();
    }

    return ItemDTO.mocks()
        .where((element) => element.name.contains(keyword))
        .toList();
  }

  @override
  Future<List<ItemDTO>> fetchItemsByCategory({
    required int categoryId,
    String? keyword,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (keyword?.isNotEmpty != true) {
      return ItemDTO.mocks();
    }

    return ItemDTO.mocks()
        .where((element) => element.name.contains(keyword!))
        .toList();
  }

  @override
  Future<DetailItemDTO> fetchDetailItem({required int itemId}) async {
    await Future.delayed(const Duration(seconds: 1));

    if (itemId == 1) {
      return DetailItemDTO.mockBostonLettuce();
    }
    

    return DetailItemDTO.mock(itemId);
  }
}
