import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:owt_interview_test/pages/home/home_state_notifier.dart';
import 'package:owt_interview_test/pages/vegetable/vegetable_detail_screen.dart';
import 'package:owt_interview_test/repositories/dtos/dtos.dart';
import 'package:owt_interview_test/widget/common_action_button.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeStateProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F5F5),
        title: const Text(
          'Categories',
          style: TextStyle(
            fontSize: 34,
            color: Color(0xFF2D0C57),
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: (homeState.categories.isEmpty)
            ? Container()
            : Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefix: Padding(
                          padding: EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.search),
                        ),
                        alignLabelWithHint: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(27)),
                            borderSide: BorderSide(color: Color(0xFFD9D0E3))),
                      ),
                      onTapOutside: (_) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: (value) {
                        ref
                            .read(homeStateProvider.notifier)
                            .fetchItemsByKeyword(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  (homeState.searchKeyWord != null &&
                          homeState.searchKeyWord!.isNotEmpty &&
                          homeState.items.isNotEmpty)
                      ? Expanded(
                          child: ListCategoryItem(
                          itemDTOs: homeState.items,
                        ))
                      : (homeState.searchKeyWord != null &&
                              homeState.searchKeyWord!.isNotEmpty &&
                              homeState.items.isEmpty)
                          ? Container()
                          : Expanded(
                              child: GridView.count(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                crossAxisCount: 2,
                                childAspectRatio: 177 / 211,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 12,
                                children: [
                                  ...homeState.categories.map((e) {
                                    return GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const VegetableDetailScreen(),
                                        ));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFD9D0E3)),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(8)),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (e.thumbPath != null)
                                              Image.asset(
                                                e.thumbPath!,
                                                height: 140,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            Expanded(
                                              child: SingleChildScrollView(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                        vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      e.name,
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      '(${e.itemCount})',
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF9586A8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                                ],
                              ),
                            ),
                ],
              ),
      ),
    );
  }
}

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem({
    super.key,
    required this.itemDTOs,
  });

  final List<ItemDTO> itemDTOs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final itemDto = itemDTOs[index];
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (itemDto.thumbPath != null)
                  Image.asset(
                    itemDto.thumbPath!,
                    width: 177,
                    height: 128,
                    fit: BoxFit.cover,
                  ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(itemDto.name),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            '${itemDto.price}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Color(0xFF2D0C57),
                            ),
                          ),
                          Text(
                            ' € / ${itemDto.unit}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF9586A8),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CommonActionButton(
                              title: Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                          )),
                          CommonActionButton(
                            title: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              //todo handle navigation
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: itemDTOs.length);
  }
}
