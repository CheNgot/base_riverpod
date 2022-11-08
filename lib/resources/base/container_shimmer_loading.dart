import 'package:flutter/cupertino.dart';

class ContainerLoading extends StatelessWidget {
  final Widget loadingView;
  final Widget child;
  bool isLoadSuccess = false;

  ContainerLoading({required this.loadingView, required this.child, required this.isLoadSuccess});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          opacity: !isLoadSuccess ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: loadingView,
        ),
        AnimatedOpacity(opacity: isLoadSuccess ? 1 : 0, duration: const Duration(milliseconds: 300), child: child)
      ],
    );
  }
}
