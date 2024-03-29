import 'package:get/get.dart';

import '../../constants/app_constants.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Future<T?> to<T>(dynamic page,
      {dynamic arguments, Transition? transition}) async {
    return await Get.to<T>(page,
        arguments: arguments,
        transition: transition ?? Transition.rightToLeftWithFade,
        duration: const Duration(milliseconds: AppConstants.lowDuration));
  }

  Future<T?> toNamed<T>(String name, {dynamic arguments}) async {
    return await Get.toNamed<T>(name, arguments: arguments);
  }
}
