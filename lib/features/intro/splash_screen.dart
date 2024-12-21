import 'package:first_app/core/utilits/colors.dart';
import 'package:first_app/core/functions/navigation.dart';
import 'package:first_app/core/utilits/text_style.dart';
import 'package:first_app/features/upload/upload_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 60), () {
      PushWithRreplacement(context, UploadScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Taskati", style: getTitelTextstyle()),
            Text("it's time to get organized",
                style: getSmallTextstyle(fontColor: AppColor.greynColor)),
          ],
        ),
      ),
    );
  }
}
