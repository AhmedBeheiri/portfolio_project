import 'package:flutter/material.dart';
import 'package:portfolio_project/views/header/header_view_desktop.dart';
import 'package:portfolio_project/views/header/header_view_mobile.dart';
import 'package:portfolio_project/views/header/header_view_tablet.dart';
import 'package:portfolio_project/views/id_card/id_card_view_mobile.dart';

import '../../core/responsive/orientation_layout.dart';
import '../../core/responsive/screen_type_layout.dart';
import 'id_card_view_desktop.dart';
import 'id_card_view_tablet.dart';

class IdCardView extends StatelessWidget {
  const IdCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: IdCardViewMobile(),
        landscape: IdCardViewMobile(),
      ),
      tablet: IdCardViewTablet(),
      desktop: IdCardViewDesktop(),
    );
  }
}
