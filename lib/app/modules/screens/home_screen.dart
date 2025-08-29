import 'package:raspucat/utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CenterLogo(),
            const SizedBox(height: ESizes.spaceBtwSections),
            NeonText(
              text: EText.name.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Building the future, one line of code at a time".toUpperCase(),
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: EColors.textPrimary),
            ),
            // NeonButton(onTap: () {}, child: Text("Contact Us")),
          ],
        ),
      ),
    );
  }
}
