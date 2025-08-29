/// --- GLOBAL EXPORTS --- ///
///
///

library;

/// ------------------------------------------------------------------ ///
/// RESPONSIVE
///
///
///
export 'package:raspucat/common/responsive/responsive_screen.dart';
export 'package:raspucat/common/responsive/responsive_layout.dart';
export 'package:raspucat/common/responsive/screens/desktop_layout.dart';
export 'package:raspucat/common/responsive/screens/mobile_layout.dart';
export 'package:raspucat/common/responsive/screens/tablet_layout.dart';

/// ------------------------------------------------------------------ ///
/// SCREENS
///
///
///
export 'package:raspucat/app/modules/screens/home_screen.dart';

/// ------------------------------------------------------------------ ///
/// CONTROLLERS
///
///
///
export 'package:raspucat/app/controllers/scroll_controller.dart';
export 'package:raspucat/app/controllers/gradient_controller.dart';
export 'package:raspucat/app/controllers/triangle_controller.dart';

/// ------------------------------------------------------------------ ///
/// CONSTANTS
///
///
///
export 'package:raspucat/utils/constants/colors.dart';
export 'package:raspucat/utils/constants/text.dart';
export 'package:raspucat/utils/constants/sizes.dart';
export 'package:raspucat/utils/constants/images.dart';
export 'package:raspucat/utils/constants/device/device_utility.dart';

/// ------------------------------------------------------------------ ///
/// WIDGETS
///
///
///
export 'package:raspucat/common/navbar/navbar.dart';
export 'package:raspucat/common/widgets/containers/section_container.dart';
export 'package:raspucat/common/widgets/triangles/background_triangles.dart';
export 'package:raspucat/common/widgets/triangles/triangle_widget.dart';
export 'package:raspucat/app/modules/widgets/center_logo.dart';
export 'package:raspucat/common/widgets/text/neon_text.dart';
export 'package:raspucat/common/widgets/gradients/gradient_overlay.dart';
export 'package:raspucat/common/widgets/buttons/neon_button.dart';

/// ------------------------------------------------------------------ ///
/// PAINTERS
///
///
///
export 'package:raspucat/common/painters/triangle_painter.dart';

/// ------------------------------------------------------------------ ///
/// APP THEMES
///
///
///
export 'package:raspucat/utils/constants/theme/theme.dart';
export 'package:raspucat/utils/constants/theme/custom_theme/text_theme.dart';

/// ------------------------------------------------------------------ ///
/// BINDINGS
///
///
///
export 'package:raspucat/bindings.dart/general_bindings.dart';

/// ------------------------------------------------------------------ ///
/// MODELS
///
///
///
export 'package:raspucat/app/data/models/triangle_model.dart';

/// ------------------------------------------------------------------ ///
/// ROUTES
///
///
///
export 'package:raspucat/routes/app_routes.dart';
export 'package:raspucat/routes/routes.dart';

/// ------------------------------------------------------------------ ///
/// FLUTTER PACKAGES
///
///
///
export 'package:flutter/material.dart';
export 'dart:math';
export 'dart:io' hide HeaderValue;
export 'package:flutter/foundation.dart';
export 'package:flutter/services.dart';

/// ------------------------------------------------------------------ ///
/// PUB PACKAGES
///
///
///
export 'package:get/get.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_svg/flutter_svg.dart';
