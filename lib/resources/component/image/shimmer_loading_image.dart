import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/widgets/image_shimmer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants.dart';
import '../../app_colors.dart';
import 'place_holder_error.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerLoadingImage extends StatelessWidget {
  ShimmerLoadingImage({
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width = 300,
    this.height = 300,
    this.backgroundColor,
    this.radius = 0,
    this.shimmerDirection = ShimmerDirection.ltr,
    this.shimmerDuration,
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.shimmerBackColor,
    this.errorWidget,
  });

  String? imageUrl;
  final double width;
  final double height;
  final double radius;
  final Color? backgroundColor;
  final ShimmerDirection shimmerDirection;
  final Duration? shimmerDuration;
  final BoxFit fit;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final Color? shimmerBackColor;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    // return Image.network(
    //   imageUrl ?? '',
    //   fit: fit,
    //   width: width,
    //   height: height,
    // );

    if (!kReleaseMode && Constants.isTestImage) {
      imageUrl =
          'https://media.macphun.com/img/uploads/customer/blog/1543597882/15435988395c0172f73a0f39.30775845.jpg?q=85&w=1680';
      // imageUrl = 'https://files.giaoducthoidai.vn/Uploaded/tranghn/2019-05-15/n6-MDJP.jpg';
      // imageUrl = 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg';
      // imageUrl: 'https://www.facebook.com/amorstay/photos/a.109105370855573/342371354195639';
      // imageUrl: 'https://graph.facebook.com/v3.3/2841154866209707/picture?type=normal',
    }

    if (imageUrl == null) {
      return ClipRRect(borderRadius: BorderRadius.circular(radius), child: ErrorPlaceHolder(width, height));
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        color: backgroundColor,
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? '',
          fit: fit,
          width: width,
          height: height,
          placeholder: (context, url) => ImageShimmerWidget(
            width: width,
            height: height,
            shimmerDirection: shimmerDirection,
            shimmerDuration: shimmerDuration ?? const Duration(milliseconds: 1000),
            baseColor: shimmerBaseColor ?? colorShimmerBase,
            highlightColor: shimmerHighlightColor ?? colorShimmerHighLight,
            backColor: shimmerBackColor ?? colorShimmerBase,
          ),
          errorWidget: (context, url, error) => errorWidget ?? ErrorPlaceHolder(width, height),
        ),
      ),
    );
  }
}
