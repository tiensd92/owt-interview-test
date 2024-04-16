import 'package:owt_interview_test/resources/resources.dart';

class ItemDTO {
  final int id;
  final String name;
  final double price;
  final String unit;
  final String? thumbPath;

  ItemDTO({
    required this.id,
    required this.name,
    required this.price,
    required this.unit,
    this.thumbPath,
  });

  static List<ItemDTO> mocks() {
    return [
      ItemDTO(
        id: 1,
        name: 'Boston Lettuce',
        price: 1.10,
        unit: 'piece',
        thumbPath: Assets.images.thumbItem1.path,
      ),
      ItemDTO(
        id: 2,
        name: 'Purple Cauliflower',
        price: 1.85,
        unit: 'kg',
        thumbPath: Assets.images.thumbItem2.path,
      ),
      ItemDTO(
        id: 3,
        name: 'Savoy Cabbage',
        price: 1.45,
        unit: 'kg',
        thumbPath: Assets.images.thumbItem3.path,
      ),
    ];
  }
}
