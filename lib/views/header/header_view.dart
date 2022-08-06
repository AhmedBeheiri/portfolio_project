import 'package:flutter/material.dart';
import 'package:portfolio_project/views/header/header_view_desktop.dart';
import 'package:portfolio_project/views/header/header_view_mobile.dart';
import 'package:portfolio_project/views/header/header_view_tablet.dart';

import '../../core/responsive/orientation_layout.dart';
import '../../core/responsive/screen_type_layout.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HeaderViewMobile(),
        landscape: HeaderViewMobile(),
      ),
      tablet: HeaderViewTablet(),
      desktop: HeaderViewDesktop(),
    );
  }
}
