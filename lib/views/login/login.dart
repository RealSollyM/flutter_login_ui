import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'all_login_views.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: OrientationLayoutBuilder(
          landscape: (context) => LoginViewDesktopLandscape(),
          portrait: (context) => LoginViewDesktopPortrait(),
        ),
        tablet: OrientationLayoutBuilder(
          landscape: (context) => LoginViewTabletLandscape(),
          portrait: (context) => LoginViewTabletPortrait(),
        ),
        mobile: OrientationLayoutBuilder(
          landscape: (context) => LoginViewMobileLandscape(),
          portrait: (context) => LoginViewMobilePortrait(),
        ),
      ),
    );
  }
}
