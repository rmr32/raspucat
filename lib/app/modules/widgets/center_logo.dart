import 'package:raspucat/utils/constants/exports.dart';

class CenterLogo extends StatelessWidget {
  const CenterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Get.snackbar(
                EText.name,
                "You tapped the logo!",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: EColors.white,
                colorText: EColors.black,
              );
            },
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: EColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  EText.name,
                  style: TextStyle(
                    color: EColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Welcome to the world of Ras3uCat",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
