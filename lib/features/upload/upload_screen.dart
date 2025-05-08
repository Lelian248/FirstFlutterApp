import 'dart:io';

import 'package:first_app/core/utilits/colors.dart';
import 'package:flutter/material.dart';
import 'package:first_app/core/widgets/customElevatedButton.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  String? path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: AppColor.darkColor,
              backgroundImage:
                  path != null
                      ? FileImage(File(path!))
                      : NetworkImage("https://picsum.photos/200"),
            ),
            //Image.asset('assets/image/upload.png'),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Upload From Camera',
              onPressed: () async {
                final picker = ImagePicker();
                await picker.pickImage(source: ImageSource.camera).then((
                  value,
                ) {
                  setState(() {
                    path = value?.path;
                  });
                });
              },
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Upload From Gallery',
              onPressed: () async {
                await ImagePicker().pickImage(source: ImageSource.gallery).then(
                  (value) {
                    setState(() {
                      if (value != null) path = value.path;
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
