import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/constants/string_constants.dart';
import 'package:my_flower/core/constants/value_constants.dart';
import 'package:my_flower/core/utils/app_extension.dart';
import 'package:my_flower/core/widgets/product_widget.dart';
import 'package:my_flower/features/home/widget/home_category_widget.dart';
import 'package:my_flower/features/home/widget/home_header_widget.dart';
import 'package:my_flower/features/home/widget/shop_category_widget.dart';

import '../widget/home_map_widget.dart';
import 'package:collection/collection.dart';

@RoutePage()
class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HomeHeaderWidget(),
          ),
          SliverToBoxAdapter(
            child: Image.asset("Home Banner".toJpg()),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 70.h,
              width: double.maxFinite,
              color: Colors.white,
              padding: const EdgeInsets.all(ValueConstants.appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(child: Image.asset("Button - Shop".toPng())),
                  Flexible(child: Image.asset("Button - Services".toPng())),
                  Flexible(child: Image.asset("Button - Posts".toPng()))
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: HomeCategoryWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(ValueConstants.appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      context.loc.newServices.toUpperCase().normalText,
                      context.loc.newServicesDesc
                          .customText(size: 10, color: Colors.grey)
                    ],
                  ),
                  context.loc.viewAllLabel
                      .customText(size: 10, color: Colors.grey)
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(left: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                      .map((e) => ProductWidget(
                            title: "Lorum",
                            subTitle: StringConstants.testText,
                            price: "RM 150.00",
                            image: "Image".toJpg(),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: ShopCategoryWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              "Trending Discoveries".toJpg(),
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.teal[900],
              padding: const EdgeInsets.all(5),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                    .mapIndexed((i, e) => AspectRatio(
                            aspectRatio: i.isOdd ? 8 / 13.5 : 8 / 14.5,
                            child: ProductWidget(
                              title: "Lorum",
                              subTitle: "${StringConstants.testText}${StringConstants.testText}",
                              price: "",
                              image: "Image".toJpg(),
                              hasBorderColor: false,
                            ),
                          ),)
                    .toList(),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  context.loc.location.toUpperCase().customText(
                      color: AppColors.appMainColor,
                      size: 13,
                      fontWeight: FontWeight.bold),
                  const HomeMapWidget(),
                  const _ShowLocation(
                    title: "Sunway Pyramid",
                    time: "10am - 10pm",
                    address: "10 Floor, Lorem Lpsum, Jalan 1 W.P Kuala Lumpur",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const _ShowLocation(
                    title: "The Gardens Mall",
                    time: "10am - 10pm",
                    address:
                        "10 Floor, Lorem Lpsum, Jalan 1 W.P Kuala Lumpur Malaysia",
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _ShowLocation extends StatelessWidget {
  const _ShowLocation(
      {required this.time, required this.address, required this.title});
  final String title, address, time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.customText(
            color: AppColors.appMainColor,
            size: 13,
            fontWeight: FontWeight.bold),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "Icon - Location2".toPng(),
              height: 17,
              width: 17,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: address.customText(
                  color: AppColors.blueColor,
                  size: 12,
                  textDecoration: TextDecoration.underline),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "Icon - Clock".toPng(),
              height: 17,
              width: 17,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(child: time.customText(color: Colors.grey, size: 12)),
          ],
        )
      ],
    );
  }
}
