import 'package:raspucat/app/controllers/scroll_controller.dart';
import 'package:raspucat/utils/constants/exports.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => TriangleController());
    Get.put(TriangleController());
    Get.put(EScrollController());
  }
}
