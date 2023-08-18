import 'package:flutter/material.dart';
import 'package:my_flower/core/constants/app_colors.dart';
import 'package:my_flower/core/constants/value_constants.dart';
import 'package:my_flower/core/utils/app_extension.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ValueConstants.appPadding),
      width: double.maxFinite,
      color: AppColors.appMainColor,
      child: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          context.loc.myFlower.toUpperCase().customText(
              color: Colors.white, size: 25, fontWeight: FontWeight.bold),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Expanded(
                  child: Divider(
                color: Colors.white,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: context.loc.nextAppointment.toUpperCase().customText(
                    color: Colors.white, fontWeight: FontWeight.bold, size: 10),
              ),
              const Expanded(
                  child: Divider(
                color: Colors.white,
              )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          /// Hard code
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    "Icon - Calender".toPng(),
                    height: 23,
                    width: 23,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  "17 Aug 2023".customText(color: Colors.white),
                ],
              ),
              const SizedBox(
                width: 3,
              ),
              Row(
                children: [
                  Image.asset(
                    "Icon -Clock".toPng(),
                    height: 23,
                    width: 23,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  "2:00 PM".customText(color: Colors.white),
                ],
              ),
              const SizedBox(
                width: 3,
              ),
              Flexible(
                child: Row(
                  children: [
                    Image.asset(
                      "Icon -Arrow".toPng(),
                      height: 23,
                      width: 23,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    "123, Jalan Duta..."
                        .customText(color: Colors.white, maxLine: 1),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        context.loc.credit.toUpperCase().customText(
                            color: AppColors.appMainColor, size: 10),
                        ("RM 100.00 ").customText(
                            color: AppColors.appMainColor,
                            size: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: AppColors.appMainColor,
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(ValueConstants.appPadding),
                    child: Column(
                      children: [
                        context.loc.points.toUpperCase().customText(
                            color: AppColors.appMainColor, size: 10),
                        ("1314").customText(
                            color: AppColors.appMainColor,
                            size: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: AppColors.appMainColor,
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(ValueConstants.appPadding),
                    child: Column(
                      children: [
                        context.loc.package.toUpperCase().customText(
                            color: AppColors.appMainColor, size: 10),
                        ("520").customText(
                            color: AppColors.appMainColor,
                            size: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
