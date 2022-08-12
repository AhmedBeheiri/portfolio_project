import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class WorkExperienceViewDesktop extends StatelessWidget {
  const WorkExperienceViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) => Padding(
        padding: EdgeInsets.symmetric(horizontal: sx(44.0)),
        child: Container(
          height: sy(370.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
