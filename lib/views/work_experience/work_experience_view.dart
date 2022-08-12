import 'package:flutter/material.dart';
import 'package:portfolio_project/views/work_experience/work_experience_view_desktop.dart';
import 'package:portfolio_project/views/work_experience/work_experience_view_mobile.dart';
import 'package:portfolio_project/views/work_experience/work_experience_view_tablet.dart';

import '../../core/responsive/orientation_layout.dart';
import '../../core/responsive/screen_type_layout.dart';

class WorkExperienceView extends StatelessWidget {
  const WorkExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: WorkExperienceViewMobile(),
        landscape: WorkExperienceViewMobile(),
      ),
      tablet: WorkExperienceViewTablet(),
      desktop: WorkExperienceViewDesktop(),
    );
  }
}
