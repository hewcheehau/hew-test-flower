import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/utils/app_extension.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class ShopCategoryWidget extends StatefulWidget {
  const ShopCategoryWidget({super.key});

  @override
  State<ShopCategoryWidget> createState() => _ShopCategoryWidgetState();
}

class _ShopCategoryWidgetState extends State<ShopCategoryWidget> {
  ScrollController? scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "Shop Plants - Icon Main".toPng(),
              height: 80.h,
              width: 80.w,
            ),
            Expanded(
                child: SingleChildScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [1, 2, 3, 4, 5]
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "Shop Plants - Icon $e".toPng(),
                            height: 70.h,
                            width: 70.w,
                          ),
                        ))
                    .toList(),
              ),
            ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: ScrollIndicator(
            scrollController: scrollController!,
            width: ScreenUtil().screenWidth*0.8,
            height: 5,
            indicatorWidth: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
            indicatorDecoration: BoxDecoration(
                color: AppColors.appMainColor,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
