import 'package:raspucat/utils/constants/exports.dart';

/// --- REUSABLE NEON BUTTON WIDGET --- ///
class NeonButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color neonColor;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;

  const NeonButton({
    super.key,
    required this.child,
    this.onTap,
    this.neonColor = EColors.primary,
    this.borderRadius = ESizes.borderRadiusLg,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          for (double i = 1; i < 4; i++)
            BoxShadow(
              color: neonColor.withOpacity(1 - (i * 0.2)),
              blurRadius: 3 * i,
            ),
          // Outer glow effect
          // BoxShadow(
          //   color: neonColor.withOpacity(0.6),
          //   blurRadius: 15,
          //   spreadRadius: 2,
          // ),
          // // // Inner shadow for depth
          // BoxShadow(
          //   color: Colors.transparent.withOpacity(1),
          //   blurRadius: 4,
          //   spreadRadius: 0,
          //   offset: const Offset(0, 2),
          // ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,
          child: Container(
            padding: padding ?? const EdgeInsets.all(ESizes.defaultSpace),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: EColors.backgroundDark, // Transparent fill
              border: Border.all(color: neonColor.withOpacity(0.8), width: 2),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
