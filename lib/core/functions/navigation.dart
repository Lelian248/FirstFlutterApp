import 'package:flutter/material.dart';

PushTo(BuildContext context, Widget newScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return newScreen;
  }));
}

PushWithRreplacement(BuildContext context, Widget newScreen) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return newScreen;
  }));
}
