import 'package:raspucat/utils/constants/exports.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: ERoutes.home, page: () => EResponsiveScreen()),
  ];
}

// TO USE:
//    onTap: () {
//               Get.toNamed(ERoutes.home);
//             },
