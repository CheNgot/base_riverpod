// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:base_riverpod/data/model/base/result.dart';
// import 'package:base_riverpod/data/model/common/common_location.dart';
// import 'package:base_riverpod/data/provider/provider.dart';
// import 'package:base_riverpod/resources/base/base_no_data.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:smart_select/smart_select.dart';
//
// // typedef Widget TileView(
// //     S2SingleState state, CommonLocation currentValue, bool isLoading, bool isShowError, String title);
//
// mixin TileView {
//   Widget getTileView(S2SingleState state, CommonLocation? currentValue, bool isLoading, String title);
// }
//
// class SmartSelectLocation extends StatefulWidget {
//   static const int typeProvince = 1;
//   static const int typeDistrict = 2;
//   static const int typeWard = 3;
//
//   final TileView tileView;
//   final int type;
//
//   final void Function(CommonLocation?)? onSelect;
//
//   SmartSelectLocation({Key? key, required this.tileView, required this.type, this.onSelect}) : super(key: key);
//
//   @override
//   SmartSelectLocationState createState() => SmartSelectLocationState();
// }
//
// class SmartSelectLocationState extends State<SmartSelectLocation> {
//   Result<List<CommonLocation>?>? listData;
//   List<S2Choice<CommonLocation>>? options = [];
//   CommonLocation? currentValue;
//
//   int? provinceId, districtId;
//
//   String title = '';
//   bool isLoading = false;
//
//   // fix bug this library trigger onChange when press back button
//   CommonLocation? _oldValue;
//
//   @override
//   void initState() {
//     super.initState();
//     switch (widget.type) {
//       case SmartSelectLocation.typeProvince:
//         title = "Tỉnh/thành phố";
//         // loadData();
//         break;
//       case SmartSelectLocation.typeDistrict:
//         title = "Quận/huyện";
//         // if (provinceId != null) loadData();
//         break;
//       case SmartSelectLocation.typeWard:
//         title = "Phường/xã";
//         // if (districtId != null) loadData();
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SmartSelect<CommonLocation>.single(
//         modalTitle: title,
//         modalType: S2ModalType.bottomSheet,
//         tileBuilder: (context, state) {
//           // return widget.tileView(
//           //      state,
//           //      currentValue,
//           //      isLoading,
//           //      widget.isShowError,
//           //      title);
//           return widget.tileView.getTileView(state, currentValue, isLoading, title);
//         },
//         choiceEmptyBuilder: (context, state) {
//           return ErrorNoData(onRetry: () {
//             loadData(null);
//           });
//         },
//         value: currentValue,
//         choiceItems: options,
//         modalFilter: true,
//         onChange: (state) {
//           if (_oldValue == state.value) return;
//           _oldValue = state.value;
//
//           if (widget.onSelect != null) {
//             widget.onSelect!(state.value);
//           }
//           return setState(() => currentValue = state.value);
//         });
//   }
//
//   void loadData(int? newId) {
//     currentValue = null;
//     final snapshot = Future.microtask(showLoading).then((_) {
//       switch (widget.type) {
//         case SmartSelectLocation.typeProvince:
//           return _loadProvinceList();
//         case SmartSelectLocation.typeDistrict:
//           if (newId != null) provinceId = newId;
//           return _loadDistrictList();
//         case SmartSelectLocation.typeWard:
//           if (newId != null) districtId = newId;
//           return _loadWardList();
//       }
//     }).whenComplete(hideLoading);
//
//     snapshot.whenComplete(() {
//       listData?.when(success: (data) {
//         setState(() {
//           if (data == null || data.isEmpty) {
//             options = [];
//           } else {
//             options = data.map((e) => S2Choice(value: e, title: e.name)).toList();
//           }
//         });
//       }, failure: (e) {
//         options = [];
//       });
//     });
//   }
//
//   void clearData() {
//     currentValue = null;
//     provinceId = null;
//     districtId = null;
//     options = [];
//     listData = null;
//     setState(() {});
//   }
//
//   void setCurrentValue(CommonLocation currentValue) {
//     this.currentValue = currentValue;
//     setState(() {});
//   }
//
//   Future<dynamic> _loadProvinceList() {
//     return Future.value(null);
//     // final commonRepository = context.read(commonRepositoryProvider);
//     // return commonRepository.loadProvinces().then((value) => listData = value);
//   }
//
//   Future<dynamic> _loadDistrictList() {
//     if (provinceId == null) return Future<void>.value();
//     return Future.value(null);
//     // final commonRepository = context.read(commonRepositoryProvider);
//     // return commonRepository.getDistrictList(provinceId).then((value) => listData = value);
//   }
//
//   Future<dynamic> _loadWardList() {
//     if (districtId == null) return Future<void>.value();
//     return Future.value(null);
//     // final commonRepository = context.read(commonRepositoryProvider);
//     // return commonRepository.getWardList(districtId).then((value) => listData = value);
//   }
//
//   void showLoading() {
//     if (isLoading) return;
//     isLoading = true;
//     setState(() {});
//   }
//
//   void hideLoading() {
//     if (!isLoading) return;
//     isLoading = false;
//     setState(() {});
//   }
// }
