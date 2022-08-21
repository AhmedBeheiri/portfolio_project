import 'package:flutter/material.dart';
import 'package:portfolio_project/views/work_experience/work_experince_row.dart';
import 'package:relative_scale/relative_scale.dart';

class WorkExperienceViewDesktop extends StatelessWidget {
  WorkExperienceViewDesktop({Key? key}) : super(key: key);
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) => Padding(
        padding: EdgeInsets.symmetric(horizontal: sx(44.0)),
        child: Container(
          height: sy(400.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Work Experience',
                    style: TextStyle(
                      fontSize: sx(16.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: sx(16.0), vertical: sy(8.0))),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(sx(2.0)))),
                    ),
                    child: Text(
                      'View More',
                      style: TextStyle(
                        fontSize: sx(5.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: sy(16.0)),
              Expanded(
                child: Scrollbar(
                  controller: controller,
                  child: ListView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      WorkExperienceRow(
                        companyName: "AlgoDriven",
                        position: "Senior Mobile Developer",
                        startDate: "Jan 2022",
                        endDate: "Present",
                        description: [
                          "Troubleshot, updated, and developed existing applications.",
                          "Wrote computer programs for smartphones and other devices.",
                          "Performed application tests and evaluations before launch.",
                          "Coordinated application plans with development teams and designed prototypes.",
                          "Utilized programming languages and source code to create software.",
                          "Consulted with function, UX, and UI designers to improve application design.",
                          " Programmed applications and tools using object-oriented languages with goals of code abstraction, stability, and reuse."
                              "Analyzed code and corrected errors to optimize output. Recommended improvements to facilitate team and project workflow.",
                          "Modified existing software to correct errors, and adapt to newly implemented hardware, or upgrade interfaces."
                              "Resolved customer issues by establishing workarounds and solutions to debug and create defect fixes."
                        ],
                        location: 'Cairo, Egypt',
                        image: 'assets/images/algodriven_logo.webp',
                      ),
                      WorkExperienceRow(
                        companyName: "VA Computing Egypt",
                        position: "Senior Mobile Developer",
                        startDate: "Sep 2021",
                        endDate: "Dec 2021",
                        description: [
                          "Troubleshot, updated, and developed existing applications.",
                          "Utilized programming languages and source code to create software.",
                          "Coordinated application plans with development teams and designed prototypes.",
                          "Wrote computer programs for smartphones and other devices",
                          "Performed application tests and evaluations before launch.",
                          "Recommended improvements to facilitate team and project workflow.",
                          "Updated software upon release of vendor patches to mitigate vulnerabilities.",
                          "Programmed applications and tools using object-oriented languages with goals of code abstraction, stability, and reuse."
                        ],
                        location: 'Cairo, Egypt',
                        image: 'assets/images/VA_logo.png',
                      ),
                      WorkExperienceRow(
                        companyName: "Jomla",
                        position: "Lead Flutter Developer",
                        startDate: "Oct 2020",
                        endDate: "Sep 2021",
                        description: [
                          "Modified existing software systems to enhance performance and add new features.",
                          "Worked with clients to analyze computing and network needs and installed appropriate solutions.",
                          "Collaborated with product and engineering team members to define and develop new product concepts.",
                          "Coordinated specifications and requirements for project technical needs.",
                          "Determined job priorities for multiple projects and communicated sequencing, priorities, and timelines to entire team."
                        ],
                        location: 'Cairo, Egypt',
                        image: 'assets/images/jomla_logo.png',
                      ),
                      WorkExperienceRow(
                        companyName: "Elnooronline",
                        position: "Flutter Developer",
                        startDate: "Jan 2020",
                        endDate: "Sep 2020",
                        description: [
                          "Implemented more than 4 Functional Applications using Flutter platform",
                          "Wrote clear, concise code in Dart",
                          "Worked With Third Party services and Libraries.",
                          "Built highly customized UI With different types of animations.",
                          "Developed new applications and expanded application functionality using Android Studio, VS code and other industry standard development tools.",
                          "Utilized best practices to identify and remedy bugs in applications within specific timeframe.",
                        ],
                        location: 'Alexandria, Egypt',
                        image: 'assets/images/elnooronline_logo.jpeg',
                      ),
                      WorkExperienceRow(
                        companyName: "Elnooronline",
                        position: "Android Developer",
                        startDate: "Sep 2018",
                        endDate: "Jan 2020",
                        description: [
                          "Participated in over 15 fully functional applications for Android devices",
                          "Applied various techniques to locate bugs and errors in applications",
                          "Provided dedicated support and timely issue resolution to clients following successful app launch",
                          "Provided code maintenance and system upgrades to maximize performance",
                          "Wrote clear, concise code in Java and Kotlin.",
                          "Participated in the entire lifecycle of Android applications including, but not limited to, research and planning through app launch and client support.",
                          "Created a mobile app for Android that easily and efficiently enabled users to find",
                          "local Maintenance Workers' services nearby.",
                          "Developed mobile applications tailored to client requirements utilizing native technologies."
                              "Designed and participated in the implementation of new features and expanded functionality for existing Android applications, developing in accordance with the newest model specifications.",
                        ],
                        location: 'Alexandria, Egypt',
                        image: 'assets/images/elnooronline_logo.jpeg',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
