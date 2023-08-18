

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/core/utils/app_extension.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...[1,2,3,4,5].map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("Button - Icon $e".toPng(),height: 52.h, width: 52.h,),
            ))
          ],
        ),
      ),
    );
  }
}