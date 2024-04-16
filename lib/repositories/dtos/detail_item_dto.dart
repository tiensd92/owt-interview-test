import 'package:owt_interview_test/repositories/dtos/dtos.dart';

class DetailItemDTO {
  final String? bannerPath;
  final int id;
  final String name;
  final double price;
  final String unit;
  final String? weightPerUnit;
  final String? description;

  DetailItemDTO({
    this.bannerPath,
    required this.id,
    required this.name,
    required this.price,
    required this.unit,
    this.weightPerUnit,
    required this.description,
  });

  factory DetailItemDTO.mockBostonLettuce() {
    return DetailItemDTO(
        id: 1,
        name: 'Boston Lettuce',
        price: 1.10,
        unit: 'piece',
        weightPerUnit: '~ 150 gr',
        description:
            'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.');
  }

  factory DetailItemDTO.mock(int id) {
    final item = ItemDTO.mocks().firstWhere((e) => e.id == id);
    return DetailItemDTO(
        id: id,
        bannerPath: item.thumbPath,
        name: item.name,
        unit: item.unit,
        price: item.price,
        description:
            'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.');
  }
}
