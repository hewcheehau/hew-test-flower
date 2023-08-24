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
    return SafeArea(
      child: Theme(
        data: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              width: ScreenUtil().screenWidth * 0.9,
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(50),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      hintText: context.loc.searchLabel,
                      constraints:
                          const BoxConstraints(minHeight: 23, minWidth: 23),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "Icon - Search".toPng(),
                          height: 23,
                          width: 23,
                        ),
                      ),
                      suffixIconConstraints:
                          const BoxConstraints(minHeight: 23, minWidth: 23),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "Icon - Filter".toPng(),
                          height: 23,
                          width: 23,
                        ),
                      )),
                ),
              ),
            ),
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
                    price: index.isOdd ?  "RM 50.00" : "RM 150.00",
                    image: "Image".toJpg(),
                    hasDiscount: index.isOdd,
                    originalPrice: index.isOdd ? "RM 100.00" : "",
                  );
                },
                itemCount: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
