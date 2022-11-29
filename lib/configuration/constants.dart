import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AssetImagesConstant {
  static const String LOGIN_LOGO = "asset/images/login-logo.png";
  static const String SLIDER_TOP = "asset/images/colorful-logo.png";
  static const String SLIDER_BACKGROUND =
      "asset/images/initial-slider/background.png";
  static const String SLIDER_ONE = "asset/images/initial-slider/1.png";
  static const String SLIDER_TWO = "asset/images/initial-slider/2.png";
  static const String SLIDER_THREE = "asset/images/initial-slider/3.png";
  static const String SLIDER_FOR = "asset/images/initial-slider/4.png";
  static const String SLIDER_FIVE = "asset/images/initial-slider/5.png";
  //static const String REGISTER_LOGO = "asset/images/colorful-logo.png";

}

abstract class MaterialStatePropertys {
  static MaterialStateProperty<RoundedRectangleBorder> defualtBorderRadius =
      MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
  static MaterialStateProperty<Color> defaultColor =
      MaterialStateProperty.all<Color>(ColorConstant.VGBLUE);
  static MaterialStateProperty<EdgeInsets> defaultZeroPadding =
      MaterialStateProperty.all(EdgeInsets.zero);
}

abstract class ColorConstant {
  static const Color VGGREEN = Color(0xff77b841);
  static const Color VGBLUE = Color(0xFF056eb1);
}

abstract class StorageKeyConstant {
  static const String FirstOpenBool = "initialApp";
  static const String JwtTokenString = "authToken";
  static const String LocaleEngBool = "localeEng";
  static const String ThemeDarkBool = "themeDark";
}

abstract class TextStyleConstant {
  static const TextStyle SliderTitle = TextStyle(
    color: Colors.grey,
    fontSize: 30,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle SliderDescription = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );

  static TextStyle get style1 {
    return TextStyle(
      color: Get.isDarkMode ? Colors.blueGrey.shade100 : Colors.blueGrey,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle? headline6 = Get.theme.textTheme.headline6;
  static TextStyle? subtitle2 = Get.theme.textTheme.subtitle2;
  static TextStyle? caption = Get.theme.textTheme.caption;
  static TextStyle? subtitle1 = Get.theme.textTheme.subtitle1;
}

abstract class PaddingConstand {
  static const EdgeInsets Padding14 = EdgeInsets.all(14.0);
  static EdgeInsets ButtonPadding = EdgeInsets.symmetric(
      horizontal: Get.width * 0.2, vertical: Get.height * 0.02);
}

abstract class BorderRadiusConstant {
  static BorderRadius BorderRadius10 = BorderRadius.circular(10);
}

abstract class ButtonStyles {
  static ButtonStyle defaultButtonStyle = ButtonStyle(
    padding: MaterialStatePropertys.defaultZeroPadding,
    backgroundColor: MaterialStatePropertys.defaultColor,
    shape: MaterialStatePropertys.defualtBorderRadius,
  );
}

abstract class InputDecortaions {
  static InputDecoration defaultInputDecoration(
          String hintText, IconData prefixIcon) =>
      InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadiusConstant.BorderRadius10,
        ),
        hintStyle: TextStyleConstant.subtitle1,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.blueGrey,
        ),
      );
}

abstract class Buttons {
  static Widget defaultButton(String text, VoidCallback? onPressed) {
    if (GetPlatform.isAndroid) {
      return ElevatedButton(
        style: ButtonStyles.defaultButtonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: PaddingConstand.ButtonPadding,
          child: Text(text),
        ),
      );
    }
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      borderRadius: BorderRadiusConstant.BorderRadius10,
      color: ColorConstant.VGBLUE,
      child: Padding(
        padding: PaddingConstand.ButtonPadding,
        child: Text(text, overflow: TextOverflow.visible),
      ),
    );
  }
}


