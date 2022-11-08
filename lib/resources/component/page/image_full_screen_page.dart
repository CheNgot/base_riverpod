import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/constants.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/app_colors.dart';
import 'package:base_riverpod/resources/app_decorations.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:base_riverpod/resources/component/icon/icon_button_round_circle.dart';
import 'package:base_riverpod/resources/component/image/shimmer_loading_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageFullScreenPage extends StatefulWidget {
  ImageFullScreenArg? arg;

  ImageFullScreenPage(this.arg);

  @override
  State<ImageFullScreenPage> createState() => _ImageFullScreenPageState();
}

class ImageFullScreenArg {
  String? imageUrl;
  File? imageFile;
  BoxFit? fit;

  ImageFullScreenArg({this.imageUrl, this.imageFile, this.fit});
}

class _ImageFullScreenPageState extends State<ImageFullScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: colorBackgroundDefault,
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(child: _buildMainView()),
            Positioned(
                left: 20.w,
                bottom: 20.w,
                child: IconButtonRoundCircle(
                  onPress: () {
                    Navigator.maybePop(context);
                  },
                  icon: Icons.close,
                  size: 30.h,
                )),
            widget.arg?.imageUrl != null
                ? Positioned.fill(
                    bottom: 20.w,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButtonRoundCircle(
                        onPress: () async {
                          _save(widget.arg?.imageUrl);
                          // var response = await http.get(Uri.parse(widget.arg?.imageUrl ?? ""));
                          // Directory documentDirectory = await getApplicationDocumentsDirectory();
                          // File file = new File(join(documentDirectory.path,
                          //     '${Constants.CHANNEL_NAME}-${DateTime.now().millisecondsSinceEpoch}.png'));
                          // file.writeAsBytesSync(response.bodyBytes);
                        },
                        icon: Icons.download_outlined,
                        size: 40.h,
                      ),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  void _save(String? url) async {
    var response = await Dio().get(
        url ?? "",
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: '${Constants.CHANNEL_NAME}-${DateTime.now().millisecondsSinceEpoch}');
    print(result);
  }

  Widget _buildMainView() {
    if (widget.arg?.imageFile != null) {
      return _buildImage();
    } else {
      if (widget.arg?.imageUrl != null && widget.arg?.imageUrl?.isNotEmpty == true) {
        return _buildImageUrl();
      } else {
        return _buildPlaceHolder();
      }
    }
  }

  Widget _buildImageUrl() {
    return ShimmerLoadingImage(
      imageUrl: widget.arg?.imageUrl,
      fit: widget.arg?.fit ?? BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  Widget _buildImage() {
    return Image.file(
      widget.arg!.imageFile!,
      fit: widget.arg?.fit ?? BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  Widget _buildPlaceHolder() {
    return Container(
      decoration: decorSolidRound(radius: 7.r, color: Color(0xFFE9E9E9)),
      child: Center(
        child: Assets.images.icImagePlaceholder.image(width: 1.sw / 3, height: 1.sw / 3),
      ),
    );
  }
}
