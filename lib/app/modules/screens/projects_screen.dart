import 'package:raspucat/utils/constants/exports.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          NeonText(
            text: EText.projectsHeading.toUpperCase(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
// class ProjectsScreen extends GetView<EScrollController> {
//   const ProjectsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         controller: controller.scrollController,
//         child: Column(
//           children: [
//             // Staggered animations using your existing scroll controller
//             Obx(() {
//               final scrollProgress = (controller.scrollOffset.value / 300)
//                   .clamp(0.0, 1.0);

//               return Column(
//                 children: [
//                   // First text slides in from left
//                   Transform.translate(
//                     offset: Offset(-100 * (1 - scrollProgress), 0),
//                     child: Opacity(
//                       opacity: scrollProgress,
//                       child: NeonText(
//                         text: "Coming Soon".toUpperCase(),
//                         style: Theme.of(context).textTheme.headlineLarge,
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   // Second text slides in from right
//                   Transform.translate(
//                     offset: Offset(100 * (1 - scrollProgress), 0),
//                     child: Opacity(
//                       opacity: scrollProgress,
//                       child: Text(
//                         "Projects will be here soon!",
//                         style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                           color: EColors.textPrimary,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 40),

//                   // Third element slides up from bottom
//                   Transform.translate(
//                     offset: Offset(0, 50 * (1 - scrollProgress)),
//                     child: Opacity(
//                       opacity: scrollProgress,
//                       child: Container(
//                         padding: const EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: EColors.primary, width: 2),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Text(
//                           "Stay tuned for amazing projects!",
//                           style: Theme.of(context).textTheme.bodyLarge
//                               ?.copyWith(color: EColors.textPrimary),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             }),

//             // Add more content to make scrolling possible
//             SizedBox(height: MediaQuery.of(context).size.height * 2),
//           ],
//         ),
//       ),
//     );
//   }
// }
