// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:base_riverpod/resources/app_resource.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:smart_select/smart_select.dart';
//
// import '../../app_textstyle.dart';
//
// class InputSmartSelectWithLabel<T> extends StatefulWidget {
//   final String? label;
//   final String? hintText;
//   final bool? isRequire;
//   final Function(T?)? onSelect;
//   final VoidCallback? onReloadData;
//   final Function(T?) convertValueName;
//   final List<T>? listData;
//   final T? currentValue;
//   final bool? modalFilter;
//
//   InputSmartSelectWithLabel(
//       {Key? key,
//       this.onSelect,
//       this.label,
//       required this.convertValueName,
//       required this.listData,
//       this.isRequire,
//       this.hintText,
//       this.currentValue,
//       this.onReloadData,
//       this.modalFilter});
//
//   @override
//   InputSmartSelectWithLabelState<T> createState() => InputSmartSelectWithLabelState<T>();
// }
//
// class InputSmartSelectWithLabelState<T> extends State<InputSmartSelectWithLabel<T>> {
//   TextEditingController ted = TextEditingController();
//   Function eq = const ListEquality().equals;
//
//   List<T>? currentListData;
//   T? currentValue;
//
//   T? _oldValue;
//   List<S2Choice<T>>? options = [];
//
//   @override
//   Widget build(BuildContext context) {
//     // if (widget.currentSelectIndex != null) currentValue = widget.listData?[widget.currentSelectIndex!];
//     return Column(
//       children: [
//         widget.label == null
//             ? SizedBox()
//             : Align(
//                 alignment: Alignment.centerLeft,
//                 child: RichTextCustom(
//                   maxLines: 1,
//                   children: [
//                     TextSpan(text: widget.label, style: styleTextBlack()),
//                     widget.isRequire == true ? TextSpan(text: " *", style: styleTextRed()) : TextSpan(),
//                   ],
//                 ),
//               ),
//         widget.label == null ? SizedBox() : SizedBox(height: 4.h),
//         _buildSmartSelectView(),
//       ],
//     );
//   }
//
//   Widget _buildSmartSelectView() {
//     if (widget.listData == null || widget.listData?.isEmpty == true) {
//       return InkWell(
//         onTap: () {
//           widget.onReloadData?.call();
//         },
//         child: _buildTextFormView(),
//       );
//     } else {
//       if (currentListData == null || !eq(currentListData, widget.listData)) {
//         currentListData = widget.listData;
//         options = widget.listData?.map((e) => S2Choice(value: e, title: widget.convertValueName(e))).toList();
//       }
//
//       if (widget.currentValue != null) {
//         currentValue = widget.currentValue;
//         ted.text = widget.convertValueName(currentValue);
//       } else {
//         currentValue = null;
//         ted.text = "";
//       }
//
//       return SmartSelect.single(
//           modalTitle: widget.label ?? widget.hintText ?? "",
//           modalType: S2ModalType.bottomSheet,
//           tileBuilder: (context, state) {
//             return InkWell(
//               onTap: () {
//                 state.showModal();
//               },
//               child: _buildTextFormView(),
//             );
//           },
//           choiceEmptyBuilder: (context, state) {
//             return ErrorNoData(onRetry: () {});
//           },
//           value: currentValue,
//           choiceItems: options ?? [],
//           modalFilter: widget.modalFilter ?? false,
//           modalFilterAuto: true,
//           onChange: (state) {
//             WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
//             if (_oldValue == state.value) return;
//             _oldValue = state.value as T;
//             widget.onSelect?.call(_oldValue);
//           });
//     }
//   }
//
//   Widget _buildTextFormView() {
//     return IgnorePointer(
//       child: InputTextField(
//         isValidator: widget.isRequire ?? false,
//         controller: ted,
//         hintText: widget.hintText,
//         hintStyle: styleTextGrey(),
//         suffixIcon:
//             Padding(padding: EdgeInsets.all(8.w), child: Assets.images.icDropDown.image(width: 20.w, height: 20.w)),
//         borderType: BorderType.typeRoundBorder,
//       ),
//     );
//   }
// }
