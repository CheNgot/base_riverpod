import 'dart:developer';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_riverpod/resources/base/base_container.dart';
import 'package:base_riverpod/resources/base/base_no_data.dart';
import 'package:base_riverpod/resources/base/container_shimmer_loading.dart';

import '../../../constants.dart';

typedef Widget ChildView<T>(T item, int index);

class ListViewLoadMore<T> extends StatefulWidget {
  // currentPage load API, always +1 ahead
  final Future<List<T>?> Function(int currentPage) loadData;

  final void Function(T)? onClickItem;
  final ChildView childView;
  final Widget childViewShimmer;
  final scrollDirection;
  double? height;
  double? width;
  bool? primary;
  ScrollController? controller;

  ListViewLoadMore(
      {Key? key,
      required this.childView,
      required this.childViewShimmer,
      required this.loadData,
      this.onClickItem,
      this.scrollDirection,
      this.height,
      this.width,
      this.primary,
      this.controller})
      : super(key: key);

  @override
  ListViewLoadMoreState<T> createState() => ListViewLoadMoreState<T>();
}

class ListViewLoadMoreState<T> extends State<ListViewLoadMore<T>> {
  // controller for detect scroll down to load more
  ScrollController? controller;
  int? currentPage;
  bool? isLoadingMore;
  List<T>? listData;
  int? _deletedItemCount;
  int? _addedItemCount;





  @override
  Widget build(BuildContext context) {
    return ContainerLoading(
      isLoadSuccess: listData != null,
      loadingView: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: widget.scrollDirection ?? Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return widget.childViewShimmer;
        },
      ),
      child: listData?.isEmpty ?? true
          ? RefreshIndicator(
              child: SingleChildScrollView(child: ErrorNoData(onRetry: refreshData)), onRefresh: refreshData)
          : RefreshIndicator(
              child: Container(
                height: widget.height,
                width: widget.width,
                child: SingleChildScrollView(
                  primary: false,
                  scrollDirection: widget.scrollDirection ?? Axis.vertical,
                  controller: controller,
                  physics: NeverScrollableScrollPhysics(),
                  child: LiveList.options(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    primary: false,
                    // key: widget.listLoadMoreKey,
                    // controller: controller,
                    scrollDirection: widget.scrollDirection ?? Axis.vertical,
                    options: const LiveOptions(
                      showItemInterval: Duration(milliseconds: 50),
                      showItemDuration: Duration(milliseconds: 100),
                      visibleFraction: 0.05,
                      reAnimateOnVisibility: false,
                    ),
                    itemCount: listData!.length + 1,
                    itemBuilder: (context, index, animation) {
                      return FadeTransition(
                        opacity: Tween<double>(begin: 0, end: 1).animate(animation),
                        child: SlideTransition(
                            position: Tween<Offset>(begin: const Offset(0, -0.1), end: Offset.zero).animate(animation),
                            child: index < listData!.length
                                ? InkWell(
                                    onTap: () {
                                      if (widget.onClickItem == null) return;
                                      widget.onClickItem!(listData![index]);
                                    },
                                    child: widget.childView(listData![index], index))
                                : isLoadingMore ?? false
                                    ? const Padding(padding: EdgeInsets.all(10), child: LoadingCircular())
                                    : const SizedBox()),
                      );
                    },
                  ),
                ),
              ),
              onRefresh: refreshData),
    );
  }

  @override
  void initState() {
    super.initState();
    currentPage = 1;
    isLoadingMore = false;
    controller = ScrollController()..addListener(_scrollListener);
    _loadAndAddData();
  }

  @override
  void dispose() {
    controller?.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() async {
    if (isLoadingMore == true) return;
    if ((controller?.position.extentAfter ?? 0) < 150) {
      log (controller?.position.extentAfter.toString()??"");
      if ((listData?.length ?? 0) + (_deletedItemCount ?? 0) - (_addedItemCount ?? 0) >=
          ((currentPage ?? 1) - 1) * Constants.pageLimit) {
        isLoadingMore = true;
        setState(() {}); // Update to show loading circle load more
        await _loadAndAddData();
        return;
      }
    } else {
      return;
    }
  }

  Future<void> _loadAndAddData() async {
    if (currentPage == null) currentPage = 1;
    final list = await widget.loadData(currentPage!);
    isLoadingMore = false;
    if (list != null) currentPage = currentPage! + 1;
    return _addData(list);
  }

  void _addData(List<T>? list) {
    if (list == null) return;

    if (listData == null || listData!.isEmpty) {
      listData = list;
    } else {
      listData?.addAll(list);
    }
    setState(() {});
  }

  void clearData() {
    currentPage = 1;
    listData = null;
    setState(() {});
  }

  void removeItem(T? item) {
    if (listData == null || listData!.isEmpty) return;
    listData?.remove(item);
    _deletedItemCount = (_deletedItemCount ?? 0) + 1;
    setState(() {});
  }

  void addItem(T? item) {
    if (item == null) return;
    if (listData == null) listData = [];
    listData?.add(item);
    _addedItemCount = (_addedItemCount ?? 0) + 1;
    setState(() {});
  }

  Future<void> refreshData() async {
    currentPage = 1;
    clearData();
    return _loadAndAddData();
  }
}
