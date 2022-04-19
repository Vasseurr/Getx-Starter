import 'package:get/get.dart';
import '../../core/pages/green_layout/login_page2.dart';
import '../../core/pages/login_page.dart';
import '../../core/pages/register_page.dart';
import '../../core/pages/red_accent_layout/register_page2.dart';
import '../../core/pages/green_layout/register_page3.dart';
import '../../core/routes/app_routes.dart';
import '../../home/bindings/home_binding.dart';
import '../../home/ui/home_page.dart';
import '../../home/ui/second_page.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.LOGIN2, page: () => LoginPage2(), binding: HomeBinding()),
    GetPage(
        name: Routes.REGISTER,
        page: () => const RegisterPage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.REGISTER2,
        page: () => RegisterPage2(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.REGISTER3,
        page: () => RegisterPage3(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.SECOND,
        page: () => const SecondPage(),
        binding: HomeBinding()),
  ];
}
