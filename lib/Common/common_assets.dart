import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CommonAssets {

  static const String baseURL = 'https://apiuat.reeroute.in';

  static const String logo = 'assets/common/thilllalogo.png';
  static const String splash = 'assets/splash/splash.png';
  static const String group = 'assets/common/group1.png';
  static const String star = 'assets/common/star.png';
  static const String registration = 'assets/common/registration.png';
  static const String order = 'assets/common/order.svg';
  static const String order2 = 'assets/common/order2.svg';
  static const String account = 'assets/common/account.svg';
  static const String profile = 'assets/common/profile.png';
  static const String profile2 = 'assets/common/profile2.png';
  static const String user1 = 'assets/common/user1.svg';
  static const String location = 'assets/common/location.svg';
  static const String earnings = 'assets/common/gift.svg';
  static const String support = 'assets/common/support.svg';
  static const String logout = 'assets/common/signout.svg';
  static const String withdraw = 'assets/common/withdraw.png';
  static const String success = 'assets/common/success.png';
  static const String userLogo = 'assets/common/userlogo3.svg';
  static const String phone = 'assets/common/telephone.svg';
  static const String pick = 'assets/common/pick.svg';
  static const String item = 'assets/common/items.png';
  static const String veg = 'assets/common/veg.svg';
  static const String send = 'assets/common/send.svg';
  static const String location2 = 'assets/common/loction2.svg';
  static const String money = 'assets/common/Money.svg';
  static const String done = 'assets/common/Done.svg';
  static const String time = 'assets/common/Time.svg';
  static const String emptyOrder = 'assets/common/emptyOrder.png';
  static const String passwordEdit = 'assets/common/passwordEdit.svg';
  static const String car = 'assets/common/Car.svg';
  static const String storefront = 'assets/common/Storefront.svg';
  static const String start = 'assets/common/Subtract.svg';
  static const String home = 'assets/common/home1.png';
  static const String start1 = 'assets/common/startdelivey.png';
  static const String reached = 'assets/common/reached.svg';




  static Widget getAssetsSvgImage(String imagePath,
      {double height = 40, double width = 40, Color? color}) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      fit: BoxFit.cover,
      color: color,
    );
  }

  static Widget getNetworkImage(String imageUrl,
      {String defaultImage = logo,
        double height = 90,
        double width = 90}) {
    return imageUrl.isNotEmpty
        ? CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      filterQuality: FilterQuality.medium,
      errorWidget:
          (BuildContext context, String exception, dynamic stackTrace) {
        return getAssetsSvgImage(defaultImage,
            height: height, width: width);
      },
    )
        : getAssetsSvgImage(defaultImage, height: height, width: width);
  }
}