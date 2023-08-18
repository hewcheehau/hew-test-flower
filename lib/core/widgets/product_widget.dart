import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/utils/app_extension.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      this.title = "",
      this.subTitle = "",
      this.image = "",
      this.price = "RM -",
      this.hasDiscount = false});
  final String title;
  final String subTitle;
  final String price;
  final String image;
  final bool hasDiscount;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight * 0.28,
      width: ScreenUtil().screenWidth * 0.37,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(image),
              if (hasDiscount)
                Positioned(
                    right: 5.w,
                    top: 5.h,
                    child: Image.asset(
                      "50�".toPng(),
                      height: 35.h,
                      width: 35.h,
                    ))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  title.customText(size: 10),
                  subTitle.customText(
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                      child: price.customText(color: AppColors.appMainColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
