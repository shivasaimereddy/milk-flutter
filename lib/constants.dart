import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kThirdColor = Color(0xfffcd76b);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your Username";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

List<BoxShadow> shadowList = [
  BoxShadow(color: Color(0xFFEEEEEE), blurRadius: 30, offset: Offset(0, 10))
];

class ApptextStyle {
  static const TextStyle MY_CARD_TITLE =
      TextStyle(color: kThirdColor, fontWeight: FontWeight.w700, fontSize: 16);

  static const TextStyle MY_CARD_SUBTITLE =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

  static const TextStyle BODY_TEXT = TextStyle(
      color: kPrimaryColor, fontWeight: FontWeight.w700, fontSize: 20);

  static const TextStyle LISTTILE_TITLE = TextStyle(
    color: kPrimaryColor,
    fontSize: 20,
  );

  static const TextStyle LISTTILE_SUB_TITLE = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );
}
