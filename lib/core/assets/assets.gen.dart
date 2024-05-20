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

  /// File path: assets/images/Baku_City_Circuit_crop.jpg
  AssetGenImage get bakuCityCircuitCrop =>
      const AssetGenImage('assets/images/Baku_City_Circuit_crop.jpg');

  /// File path: assets/images/Circuit_de_Monaco_crop.png
  AssetGenImage get circuitDeMonacoCrop =>
      const AssetGenImage('assets/images/Circuit_de_Monaco_crop.png');

  /// File path: assets/images/Circuit_of_Spa-Francorchamps_crop.jpg
  AssetGenImage get circuitOfSpaFrancorchampsCrop => const AssetGenImage(
      'assets/images/Circuit_of_Spa-Francorchamps_crop.jpg');

  /// File path: assets/images/aston_martin_DB12.jpg
  AssetGenImage get astonMartinDB12 =>
      const AssetGenImage('assets/images/aston_martin_DB12.jpg');

  /// File path: assets/images/audi_r8.jpeg
  AssetGenImage get audiR8 => const AssetGenImage('assets/images/audi_r8.jpeg');

  /// File path: assets/images/bmw_m5.jpg
  AssetGenImage get bmwM5 => const AssetGenImage('assets/images/bmw_m5.jpg');

  /// File path: assets/images/chevrolete_corvette.jpg
  AssetGenImage get chevroleteCorvette =>
      const AssetGenImage('assets/images/chevrolete_corvette.jpg');

  /// File path: assets/images/circuit.jpg
  AssetGenImage get circuit => const AssetGenImage('assets/images/circuit.jpg');

  /// File path: assets/images/circuit_bg.jpg
  AssetGenImage get circuitBg =>
      const AssetGenImage('assets/images/circuit_bg.jpg');

  /// File path: assets/images/circuit_bg2.jpg
  AssetGenImage get circuitBg2 =>
      const AssetGenImage('assets/images/circuit_bg2.jpg');

  /// File path: assets/images/contoh.jpg
  AssetGenImage get contoh => const AssetGenImage('assets/images/contoh.jpg');

  /// File path: assets/images/ferrari_sf90.jpg
  AssetGenImage get ferrariSf90 =>
      const AssetGenImage('assets/images/ferrari_sf90.jpg');

  /// File path: assets/images/lamborghini_revuelto.jpg
  AssetGenImage get lamborghiniRevuelto =>
      const AssetGenImage('assets/images/lamborghini_revuelto.jpg');

  /// File path: assets/images/maserati_mc20.jpg
  AssetGenImage get maseratiMc20 =>
      const AssetGenImage('assets/images/maserati_mc20.jpg');

  /// File path: assets/images/mclaren_720s.jpg
  AssetGenImage get mclaren720s =>
      const AssetGenImage('assets/images/mclaren_720s.jpg');

  /// File path: assets/images/mercedes_benz_amg_gtr.jpg
  AssetGenImage get mercedesBenzAmgGtr =>
      const AssetGenImage('assets/images/mercedes_benz_amg_gtr.jpg');

  /// File path: assets/images/nissan_gtr35.jpg
  AssetGenImage get nissanGtr35 =>
      const AssetGenImage('assets/images/nissan_gtr35.jpg');

  /// File path: assets/images/nur2.webp
  AssetGenImage get nur2 => const AssetGenImage('assets/images/nur2.webp');

  /// File path: assets/images/nurburgring_crop.jpg
  AssetGenImage get nurburgringCrop =>
      const AssetGenImage('assets/images/nurburgring_crop.jpg');

  /// File path: assets/images/porsche_gt3_rs_.jpg
  AssetGenImage get porscheGt3Rs =>
      const AssetGenImage('assets/images/porsche_gt3_rs_.jpg');

  /// File path: assets/images/silverstone_crop.jpg
  AssetGenImage get silverstoneCrop =>
      const AssetGenImage('assets/images/silverstone_crop.jpg');

  /// File path: assets/images/suzuka_crop.jpg
  AssetGenImage get suzukaCrop =>
      const AssetGenImage('assets/images/suzuka_crop.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bakuCityCircuitCrop,
        circuitDeMonacoCrop,
        circuitOfSpaFrancorchampsCrop,
        astonMartinDB12,
        audiR8,
        bmwM5,
        chevroleteCorvette,
        circuit,
        circuitBg,
        circuitBg2,
        contoh,
        ferrariSf90,
        lamborghiniRevuelto,
        maseratiMc20,
        mclaren720s,
        mercedesBenzAmgGtr,
        nissanGtr35,
        nur2,
        nurburgringCrop,
        porscheGt3Rs,
        silverstoneCrop,
        suzukaCrop
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
