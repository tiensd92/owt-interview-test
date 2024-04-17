import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VegetableDetailScreen extends ConsumerStatefulWidget {
  const VegetableDetailScreen({super.key});

  @override
  ConsumerState<VegetableDetailScreen> createState() =>
      _VegetableDetailScreenState();
}

class _VegetableDetailScreenState extends ConsumerState<VegetableDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        const Positioned(top: 0, right: 0, child: Icon(Icons.account_balance)),
        SafeArea(
          child: Container(),
        ),
      ]),
    );
  }
}
