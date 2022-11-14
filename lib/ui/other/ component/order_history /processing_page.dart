import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
class ProcessingPage extends StatefulWidget {
  const ProcessingPage({Key? key}) : super(key: key);

  @override
  State<ProcessingPage> createState() => _ProcessingPageState();
}

class _ProcessingPageState extends State<ProcessingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (BuildContext context,int index){
      return Text("123");
    });
  }
}
