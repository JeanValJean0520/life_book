import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const NuriApp());
}

class NuriApp extends StatelessWidget {
  const NuriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
        builder: (context, child){
          return MyWidget()
    );
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height : 100.h,
      width : 100.w
      child :Text("Hello", fontSized : 12.sp)
    );
  }
}
