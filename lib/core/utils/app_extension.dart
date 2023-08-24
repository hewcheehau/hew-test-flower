import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

/// Text
extension CustomText on String {
  Widget get extralargeText =>
      _text(text: this, fontSize: 25.sp, fontWeight: FontWeight.bold);
  Widget get largeText =>
      _text(text: this, fontSize: 20.sp, fontWeight: FontWeight.bold);
  Widget get mediumText =>
      _text(text: this, fontSize: 17.sp, fontWeight: FontWeight.w500);
  Widget get normalText =>
      _text(text: this, fontSize: 14.sp, fontWeight: FontWeight.normal);
  Widget customText({
    Color? color,
    double? size,
    FontWeight? fontWeight,
    TextAlign textAlign = TextAlign.left,
    int? maxLine,
    TextDecoration? textDecoration,
    Color? decorationColor,
  }) =>
      _text(
        text: this,
        color: color,
        fontSize: size?.sp ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        maxLine: maxLine ?? 2,
        textDecoration: textDecoration,
        decorationColor: decorationColor
      );

  Text _text(
      {String text = "",
      double? fontSize,
      int maxLine = 2,
      TextAlign textAlign = TextAlign.left,
      TextOverflow textOverflow = TextOverflow.ellipsis,
      Color? color,
      FontWeight? fontWeight,
      TextDecoration? textDecoration,
      Color? decorationColor,}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration,
        decorationColor: decorationColor ?? Colors.blue
      ),
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}

extension ImagePath on String {
  toPng() => "assets/images/$this.png";
  toJpg() => "assets/images/$this.jpg";
}
