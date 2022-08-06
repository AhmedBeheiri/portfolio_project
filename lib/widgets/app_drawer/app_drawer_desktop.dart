import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relative_scale/relative_scale.dart';

class AppDrawerDesktop extends StatelessWidget {
  const AppDrawerDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: sx(14.0), vertical: sy(16.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Ahmed Beheiri",
                style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.selectionColor,
                  fontSize: sx(10),

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "About",
                style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.selectionColor,
                  fontSize: sx(8),

                ),
              ),
            ),
             SizedBox(
              width: sx(5),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Projects",
                style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.selectionColor,
                  fontSize: sx(8),

                ),
              ),
            ),
             SizedBox(
              width: sx(5),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Contacts",
                style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.selectionColor,
                  fontSize: sx(8),

                ),
              ),
            ),
             SizedBox(
              width: sx(16),
            ),
          ],
        ),
      );
    });
  }
}
