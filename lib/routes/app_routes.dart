import 'package:get/get.dart';
import 'package:traveltekpro_task_karan/features/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:traveltekpro_task_karan/features/bottom_nav/view/bottom_nav_view.dart';
import 'package:traveltekpro_task_karan/features/home/controller/home_controller.dart';
import 'package:traveltekpro_task_karan/features/home/view/home_screen.dart';
import 'package:traveltekpro_task_karan/splash/controller/splash_controller.dart';
import 'package:traveltekpro_task_karan/splash/view/splash_screen.dart';

class AppPages {

  static const String INITIAL = '/splash';

  static final routes = [

    GetPage(
      name: '/splash',
      page: () => SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),

    GetPage(
      name: "/bottomNav",
      page: () => const BottomNavView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<BottomNavController>(
                () => BottomNavController());
        Get.lazyPut<HomeController>(
              () => HomeController(),
        );
      }),
    ),
  ];
}