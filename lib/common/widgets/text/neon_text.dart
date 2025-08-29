import 'package:raspucat/utils/constants/exports.dart';

/// --- REUSABLE NEON TEXT WIDGET --- ///
class NeonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color neonColor;
  final bool isGradient;

  const NeonText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.neonColor = EColors.primary,
    this.isGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? const TextStyle()).copyWith(
        shadows: [
          for (double i = 1; i < 4; i++)
            Shadow(
              color: neonColor.withOpacity(1 - (i * 0.2)),
              blurRadius: 3 * i,
            ),
        ],
      ),
      textAlign: textAlign ?? TextAlign.center,
      strutStyle: StrutStyle(
        forceStrutHeight: true,
        height: 0.7,
        leading: 0,
        fontSize: style?.fontSize,
        fontFamily: style?.fontFamily,
        fontWeight: style?.fontWeight,
      ),
    );
  }
}
