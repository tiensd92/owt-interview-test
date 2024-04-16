import 'package:owt_interview_test/resources/resources.dart';

class CategoryDTO {
  final int id;
  final String name;
  final int itemCount;
  final String? thumbPath;

  CategoryDTO({
    required this.id,
    required this.name,
    required this.itemCount,
    this.thumbPath,
  });

  static List<CategoryDTO> mocks() {
    return [
      CategoryDTO(
        id: 1,
        name: 'Vegetables',
        itemCount: 43,
        thumbPath: Assets.images.thumbCategory1.path,
      ),
      CategoryDTO(
        id: 2,
        name: 'Fruits',
        itemCount: 32,
        thumbPath: Assets.images.thumbCategory2.path,
      ),
      CategoryDTO(
        id: 3,
        name: 'Bread',
        itemCount: 22,
        thumbPath: Assets.images.thumbCategory3.path,
      ),
      CategoryDTO(
        id: 4,
        name: 'Sweets',
        itemCount: 56,
        thumbPath: Assets.images.thumbCategory4.path,
      ),
      CategoryDTO(
        id: 5,
        name: 'Pasta',
        itemCount: 43,
        thumbPath: Assets.images.thumbCategory5.path,
      ),
      CategoryDTO(
        id: 6,
        name: 'Drinks',
        itemCount: 43,
        thumbPath: Assets.images.thumbCategory6.path,
      ),
    ];
  }
}
