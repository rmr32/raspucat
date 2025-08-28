import 'package:raspucat/app/modules/screens/projects_screen.dart';
import 'package:raspucat/utils/constants/exports.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    /// --- CONTROLLERS --- ///
    final scrollController = EScrollController.instance;

    return Scaffold(
      backgroundColor: EColors.backgroundDark,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: ESizes.appBarHeight),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController.scrollController,
                  child: Column(
                    children: [
                      HomeScreen(),
                      SizedBox(height: 600),
                      ProjectsScreen(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          BackgroundTriangles(),
        ],
      ),
    );
  }
}
