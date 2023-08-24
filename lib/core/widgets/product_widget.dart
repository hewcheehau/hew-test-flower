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
      this.originalPrice = "",
      this.hasDiscount = false,
      this.hasBorderColor = true});
  final String title;
  final String subTitle;
  final String price;
  final String image;
  final String originalPrice;
  final bool hasDiscount, hasBorderColor;
  @override
  Widget build(BuildContext context) {
    var smallScreen = MediaQuery.of(context).size.width <= 380;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: ScreenUtil().screenHeight * (smallScreen ? 0.39 : 0.35),
      width: ScreenUtil().screenWidth * 0.40,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      decoration: BoxDecoration(
          border: hasBorderColor
              ? Border.fromBorderSide(BorderSide(color: Colors.grey[100]!))
              : null,
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: LayoutBuilder(
        builder: (context, cts) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Image.asset(image, fit: BoxFit.fitWidth,)),
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
                      Expanded(
                          child: title.customText(size: 10, color: Colors.grey)),
                      Expanded(flex: 2, child: subTitle.customText(size: 12, maxLine: price.isEmpty ? 3 : 2)),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                          visible: hasDiscount,
                          child: Flexible(
                            child: originalPrice.customText(
                                color: Colors.grey,
                                maxLine: 1,
                                size: 10,
                                textDecoration: TextDecoration.lineThrough, decorationColor: Colors.grey),
                          )),
                      const SizedBox(
                        height: 4,
                      ),
                      Visibility(
                        visible: price.isNotEmpty,
                        child: Flexible(
                          child: price.customText(
                            color: AppColors.priceGreenColor,
                            maxLine: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
