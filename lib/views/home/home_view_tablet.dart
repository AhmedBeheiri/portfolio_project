import 'package:flutter/material.dart';
import 'package:portfolio_project/views/header/header_view_desktop.dart';
import 'package:portfolio_project/widgets/app_drawer/app_drawer.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeViewTablet extends StatefulWidget {
  const HomeViewTablet({Key? key}) : super(key: key);

  @override
  State<HomeViewTablet> createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends State<HomeViewTablet> {
  final aboutKey = GlobalKey();

  final skillsKey = GlobalKey();

  final projectsKey = GlobalKey();

  final contactKey = GlobalKey();

  var aboutContext;

  var skillsContext;

  var projectsContext;

  var contactContext;

  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// here you can see we are assigning globalKey.currentContext to the targetContext
      /// variable which help to render the exact  widget which we are targeting.

      aboutContext = aboutKey.currentContext;
      skillsContext = skillsKey.currentContext;
      projectsContext = projectsKey.currentContext;
      contactContext = contactKey.currentContext;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.maybeOf(context)!.orientation;
    return Scaffold(
      body: RelativeBuilder(
        builder: (context, height, width, sy, sx) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AppDrawer(),
                 SizedBox(height: sy(20)),
                HeaderViewDesktop(),
              ],
            ),
          );
        }
      ),
    );
  }
}
