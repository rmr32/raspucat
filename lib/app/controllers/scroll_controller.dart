import 'package:raspucat/utils/constants/exports.dart';

class EScrollController extends GetxController {
  static EScrollController get instance => Get.find();
  final scrollController = ScrollController();

  void scrollTo(double offset) {
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }
}
