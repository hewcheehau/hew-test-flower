import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/service_locator.dart';

import 'app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await startup();
  runApp(const MyFlowerApp());
}
