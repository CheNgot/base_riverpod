import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/app_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

enum CommonImageOperation { full, onlyDelete, onlyView }

class CommonImageView extends StatelessWidget {
  String? imageUrl;
  File? image;
  double width;
  double height;
  BoxFit? fit;
  CommonImageOperation operation;

  VoidCallback? onPressDelete;
  VoidCallback? onPressSelectImage;
  Function(File?)? onSelectImage;

  CommonImageView({
    this.imageUrl,
    this.image,
    this.fit,
    required this.width,
    required this.height,
    this.onPressDelete,
    this.onPressSelectImage,
    this.onSelectImage,
    this.operation = CommonImageOperation.full,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: operation == CommonImageOperation.onlyView ? 0 : 10.w,
            top: operation == CommonImageOperation.onlyView ? 0 : 10.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.r),
              child: _buildMainView(context),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: _buildButtonTopRightView(context),
          )
        ],
      ),
    );
  }

  Widget _buildMainView(BuildContext context) {
    if (image != null) {
      return _buildImage();
    } else {
      if (imageUrl != null && imageUrl?.isNotEmpty == true) {
        return _buildImageUrl();
      } else {
        return _buildPlaceHolder(context);
      }
    }
  }

  Widget _buildButtonTopRightView(BuildContext context) {
    switch (operation) {
      case CommonImageOperation.full:
        if (image != null) {
          return IconDeleteCircle(size: 30.w, onPress: onPressDelete);
        } else
          return IconEditCircle(
            size: 30.w,
            onPress: () {
              onPressSelectImage != null ? onPressSelectImage?.call() : _onSelectImage(context);
            },
          );
      case CommonImageOperation.onlyDelete:
        return IconDeleteCircle(size: 30.w, onPress: onPressDelete);
      case CommonImageOperation.onlyView:
        return SizedBox();
    }
  }

  Widget _buildImageUrl() {
    return ShimmerLoadingImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
    );
  }

  Widget _buildImage() {
    return Image.file(
      image!,
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
    );
  }

  Widget _buildPlaceHolder(BuildContext context) {
    return InkWell(
      onTap: () => _onSelectImage(context),
      child: Container(
        decoration: decorSolidRound(radius: 7.r, color: Colors.white),
        child: Center(
          child: Assets.images.icImagePlaceholder.image(width: width / 3, height: height / 3),
        ),
      ),
    );
  }

  void _onSelectImage(BuildContext context) async {
    final assets = await AssetPicker.pickAssets(
      context,
      maxAssets: 1,
      textDelegate: EnglishTextDelegate(),
    );
    WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
    List<File?> imageList = [];
    for (var element in assets ?? []) {
      final file = await element.file;
      imageList.add(file);
    }

    onSelectImage?.call(imageList[0]);
  }
}
