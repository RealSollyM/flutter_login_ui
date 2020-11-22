import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'all_signup_views.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: OrientationLayoutBuilder(
          landscape: (context) => SignupViewDesktopLandscape(),
          portrait: (context) => SignupViewDesktopPortrait(),
        ),
        tablet: OrientationLayoutBuilder(
          landscape: (context) => SignupViewTabletLandscape(),
          portrait: (context) => SignupViewTabletPortrait(),
        ),
        mobile: OrientationLayoutBuilder(
          landscape: (context) => SignupViewMobileLandscape(),
          portrait: (context) => SignupViewMobilePortrait(),
        ),
      ),
    );
  }
}
