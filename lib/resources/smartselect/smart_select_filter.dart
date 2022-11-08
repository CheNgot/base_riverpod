// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:base_riverpod/resources/app_resource.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:smart_select/smart_select.dart';
//
// class SmartSelectFilter<T> extends StatefulWidget {
//   final String? hintText;
//   final bool? isRequire;
//   final Function(T?)? onSelect;
//   final VoidCallback? onReloadData;
//   final Function(T?) convertValueName;
//   final List<T>? listData;
//   final T? currentValue;
//   final bool? modalFilter;
//   final bool? isHaveAllOption;
//
//   SmartSelectFilter({
//     Key? key,
//     this.onSelect,
//     required this.convertValueName,
//     required this.listData,
//     this.isRequire,
//     this.hintText,
//     this.currentValue,
//     this.onReloadData,
//     this.modalFilter,
//     this.isHaveAllOption = true,
//   });
//
//   @override
//   SmartSelectFilterState<T> createState() => SmartSelectFilterState<T>();
// }
//
// class SmartSelectFilterState<T> extends State<SmartSelectFilter<T>> {
//   Function eq = const ListEquality().equals;
//
//   List<T>? currentListData;
//   T? currentValue;
//   String? currentValueStr;
//
//   T? _oldValue;
//   List<S2Choice<Object>>? options = [];
//
//   @override
//   Widget build(BuildContext context) {
//     // if (widget.currentSelectIndex != null) currentValue = widget.listData?[widget.currentSelectIndex!];
//     return _buildSmartSelectView();
//   }
//
//   Widget _buildSmartSelectView() {
//     if (widget.listData == null || widget.listData?.isEmpty == true) {
//       return InkWell(
//         onTap: widget.onReloadData,
//         child: _buildTextFormView(),
//       );
//     } else {
//       if (currentListData == null || !eq(currentListData, widget.listData)) {
//         currentListData = widget.listData;
//         if (widget.isHaveAllOption == true) options?.add(S2Choice(value: true, title: "Tẩt cả"));
//         options?.addAll(
//             widget.listData?.map((e) => S2Choice(value: e as Object, title: widget.convertValueName(e))).toList() ??
//                 []);
//       }
//
//       if (widget.currentValue != null) {
//         currentValue = widget.currentValue;
//         currentValueStr = widget.convertValueName(currentValue);
//       } else {
//         currentValue = null;
//         if (widget.isHaveAllOption == true) currentValueStr = "Tẩt cả";
//         else currentValueStr = "";
//       }
//
//       return SmartSelect.single(
//           modalTitle: widget.hintText ?? "",
//           modalType: S2ModalType.bottomSheet,
//           tileBuilder: (context, state) {
//             return InkWell(
//               onTap: state.showModal,
//               child: _buildTextFormView(),
//             );
//           },
//           choiceEmptyBuilder: (context, state) {
//             return ErrorNoData(onRetry: () {});
//           },
//           value: currentValue ?? true,
//           choiceItems: options ?? [],
//           modalFilter: widget.modalFilter ?? false,
//           modalFilterAuto: true,
//           onChange: (state) {
//             WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
//             if (_oldValue == state.value && _oldValue != null) return;
//             if (state.value is bool) {
//               //chọn tất cả
//               widget.onSelect?.call(null);
//             } else {
//               _oldValue = state.value as T;
//               widget.onSelect?.call(_oldValue);
//             }
//           });
//     }
//   }
//
//   Widget _buildTextFormView() {
//     return Container(
//       margin: EdgeInsets.only(right: 7.w),
//       padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
//       alignment: Alignment.centerLeft,
//       // decoration: decorSolidBorder(radius: 15.r, colorBorder: colorGrey, borderWidth: 1, colorSolid: Colors.white),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text("${widget.hintText} : ${currentValueStr ?? "Tẩt cả"}", style: styleTextBlack()),
//           SizedBox(width: 5.w),
//           Icon(Icons.keyboard_arrow_down, color: colorGrey, size: 17.h)
//         ],
//       ),
//     );
//   }
// }
