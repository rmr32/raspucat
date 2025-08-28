import 'package:raspucat/utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [CenterLogo()]);
  }
}
