import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_textstyle.dart';
import 'custom_dropdown_button.dart';

class DropdownContainer extends StatefulWidget {
  final Widget child;
  final List<String>? menuList;
  final ValueChanged<String?>? onMenuSelected;

  double? width;
  bool? isShowMenuOnLongPress = false;
  bool? isShowMenuOnPress = false;
  GestureTapCallback? onTap;
  GestureLongPressCallback? onLongPress;

  DropdownContainer(
      {Key? key,
      required this.child,
      this.onMenuSelected,
      this.menuList,
      this.width,
      this.onTap,
      this.onLongPress,
      this.isShowMenuOnLongPress,
      this.isShowMenuOnPress})
      : super(key: key);

  @override
  DropdownContainerState createState() => DropdownContainerState();
}

class DropdownContainerState<T> extends State<DropdownContainer> {
  final GlobalKey<CustomDropdownButtonState> dropdownKey = GlobalKey<CustomDropdownButtonState>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.isShowMenuOnPress == true) {
          dropdownKey.currentState?.callTap();
        }
        widget.onTap?.call();
      },
      onLongPress: () {
        if (widget.isShowMenuOnLongPress == true) {
          dropdownKey.currentState?.callTap();
        }
        widget.onLongPress?.call();
      },
      // child :    IgnorePointer(child: widget.child)
      child: Stack(
        children: [
          Positioned(
            right: 5.w,
            top: 30.h,
            child: widget.menuList == null || widget.menuList!.isEmpty
                ? SizedBox()
                : ButtonTheme(
                    alignedDropdown: true,
                    child: CustomDropdownButton<String>(
                      key: dropdownKey,
                      iconSize: 0,
                      elevation: 8,
                      isDense: true,
                      style: styleTextBlack(),
                      dropdownColor: Colors.white,
                      underline: SizedBox(),
                      onChanged: (String? t) {
                        widget.onMenuSelected?.call(t);
                      },
                      items: widget.menuList!.map<CustomDropdownMenuItem<String>>((String value) {
                        return CustomDropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              width: widget.width ?? 100.w,
                              height: 35,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 5.w, right: 5.w),
                              child: Center(child: Text(value, textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis)),
                              decoration: value != widget.menuList?.last
                                  ? BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 0.6.h)))
                                  : BoxDecoration()),
                        );
                      }).toList(),
                    ),
                  ),
          ),
          Center(child: widget.child)
        ],
      ),
    );
  }

  void showMenu() {
    dropdownKey.currentState?.callTap();
  }
}
