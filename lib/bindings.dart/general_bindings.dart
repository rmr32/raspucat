import 'package:raspucat/utils/constants/exports.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => TriangleController());
    Get.put(TriangleController());
    Get.put(GradientController());
    Get.put(EScrollController());
    Get.put(SectionAnimationController());
    Get.put(ECarouselController(projects: EData.projects));
  }
}
