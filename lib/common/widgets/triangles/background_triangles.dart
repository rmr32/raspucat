import 'package:raspucat/utils/constants/exports.dart';

class BackgroundTriangles extends StatelessWidget {
  const BackgroundTriangles({super.key});

  @override
  Widget build(BuildContext context) {
    /// --- CONTROLLERS --- ///
    final controller = Get.find<TriangleController>();

    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, _) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: List.generate(controller.triangles.length, (index) {
                return TriangleWidget(
                  index: index,
                  constraints: constraints,
                  animationValue: controller.animationController.value,
                );
              }),
            );
          },
        );
      },
    );
  }
}
