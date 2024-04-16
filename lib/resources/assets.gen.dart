/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/thumb_category_1.png
  AssetGenImage get thumbCategory1 =>
      const AssetGenImage('assets/images/thumb_category_1.png');

  /// File path: assets/images/thumb_category_2.png
  AssetGenImage get thumbCategory2 =>
      const AssetGenImage('assets/images/thumb_category_2.png');

  /// File path: assets/images/thumb_category_3.png
  AssetGenImage get thumbCategory3 =>
      const AssetGenImage('assets/images/thumb_category_3.png');

  /// File path: assets/images/thumb_category_4.png
  AssetGenImage get thumbCategory4 =>
      const AssetGenImage('assets/images/thumb_category_4.png');

  /// File path: assets/images/thumb_category_5.png
  AssetGenImage get thumbCategory5 =>
      const AssetGenImage('assets/images/thumb_category_5.png');

  /// File path: assets/images/thumb_category_6.png
  AssetGenImage get thumbCategory6 =>
      const AssetGenImage('assets/images/thumb_category_6.png');

  /// File path: assets/images/thumb_item_1.png
  AssetGenImage get thumbItem1 =>
      const AssetGenImage('assets/images/thumb_item_1.png');

  /// File path: assets/images/thumb_item_2.png
  AssetGenImage get thumbItem2 =>
      const AssetGenImage('assets/images/thumb_item_2.png');

  /// File path: assets/images/thumb_item_3.png
  AssetGenImage get thumbItem3 =>
      const AssetGenImage('assets/images/thumb_item_3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        thumbCategory1,
        thumbCategory2,
        thumbCategory3,
        thumbCategory4,
        thumbCategory5,
        thumbCategory6,
        thumbItem1,
        thumbItem2,
        thumbItem3
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
