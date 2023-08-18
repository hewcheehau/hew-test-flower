import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flower/core/constants/string_constants.dart';
import 'package:my_flower/core/utils/app_extension.dart';
import 'package:my_flower/core/widgets/product_widget.dart';

@RoutePage()
class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: CupertinoSearchTextField(
          decoration: BoxDecoration(
              border:
                  const Border.fromBorderSide(BorderSide(color: Colors.grey)),
              borderRadius: BorderRadius.circular(20)),
        ),
        actions: [
          Image.asset(
            "Icon - Filter".toPng(),
            height: 23,
            width: 23,
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 8 / 13),
            itemBuilder: (context, index) {
              return ProductWidget(
                title: "Lorum",
                subTitle: StringConstants.testText,
                price: "RM 150.00",
                image: "Image".toJpg(),
                hasDiscount: index.isEven,
              );
            },
            itemCount: 100,
          )
        ],
      ),
    );
  }
}
