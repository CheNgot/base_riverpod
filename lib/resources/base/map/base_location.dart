import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:base_riverpod/utils/util/alert_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/data/model/common/common_latlng.dart';
import 'package:base_riverpod/utils/util/alert_util.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as IMG;

import 'package:geolocator/geolocator.dart';

mixin BaseLocation {
  static final double zoomSize = 16.0;

  CommonLatLng currentUserPosition = CommonLatLng(lat: 10.808344, lng: 106.647998);

  void getCurrentLocation(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      showAlert(message: 'Location services are not enabled', context: context);
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        showAlert(message: 'Ứng dụng cần quyền truy cập vị trí để tiếp tục', context: context);
        return Future.error('Location permissions are permanently denied, we cannot request permissions.');
      }

      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        showAlert(message: 'Ứng dụng cần quyền truy cập vị trí để tiếp tục', context: context);
        return Future.error('Location permissions are denied');
      }
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final position = await Geolocator.getCurrentPosition();
    currentUserPosition = CommonLatLng(lat: position.latitude, lng: position.longitude);
    // context.read(hiveProvider).saveCurrentLocation(CommonLatLng(lat: position.latitude, lng: position.longitude));
    startLogic();
  }

  // Override by parent
  void startLogic() {}
}
