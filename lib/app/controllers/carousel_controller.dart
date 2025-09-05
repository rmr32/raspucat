import 'package:raspucat/utils/constants/exports.dart';

class ECarouselController extends GetxController {
  static ECarouselController get instance => Get.find();

  final CarouselSliderController carouselController =
      CarouselSliderController();
  final currentPage = 0.obs;
  final List<ProjectModel> projects;

  ECarouselController({required this.projects});

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void jumpTo(int index) {
    carouselController.animateToPage(index);
  }
}
