import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:darty_commons/darty_commons.dart';

class HeaderViewDesktop extends StatelessWidget {
  const HeaderViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) => Padding(
        padding: EdgeInsets.symmetric(horizontal: sx(24.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Hey!',
                    style: TextStyle(
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor,
                      fontSize: sx(12.0),
                    ),
                  ),
                  SizedBox(
                    height: sy(5),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'I\'m',
                      style: TextStyle(
                        color:
                            Theme.of(context).textSelectionTheme.selectionColor,
                        fontSize: sx(20),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Ahmed Beheiri',
                          style: TextStyle(color: Color(0xFFEEBf63)),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sy(5),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: sx(20),
                      fontWeight: FontWeight.w600,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Mobile Developer.'),
                        TypewriterAnimatedText('Competitive Developer.'),
                        TypewriterAnimatedText('Always learning new things.'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sy(14),
                  ),
                  Text(
                    "Hardworking and reliable Mobile Developer with strong ability in Native Android, Native Ios, React Native, and Flutter Applications Development. Offering great knowledge of building, integrating, and supporting Mobile applications for mobile devices. Highly organized, proactive and punctual with a team-oriented mentality.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor,
                      fontSize: sx(12),
                    ),
                  ),
                  SizedBox(
                    height: sy(14),
                  ),
                  Row(
                    children: [
                      Text(
                        'Follow me',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: sx(12),
                        ),
                      ),
                      SizedBox(
                        width: sx(16),
                      ),
                      InkWell(
                        onTap: () {
                          "https://github.com/AhmedBeheiri".browse();
                        },
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Color(0xff828282),
                          size: sx(16),
                        ),
                      ),
                      SizedBox(
                        width: sx(10),
                      ),
                      InkWell(
                        onTap: () {
                          "https://www.linkedin.com/in/ahmed-beheiri/".browse();
                        },
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color(0xff828282),
                          size: sx(16),
                        ),
                      ),
                      SizedBox(
                        width: sx(10),
                      ),
                      InkWell(
                        onTap: () {
                          "https://twitter.com/a7medbe7eiri".browse();
                        },
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xff828282),
                          size: sx(16),
                        ),
                      ),
                      SizedBox(
                        width: sx(10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sy(14),
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          "".email("ahmedbeheirii@gmail.com");
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(sx(3)),
                          )),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(
                              horizontal: sx(8),
                              vertical: sx(8),
                            ),
                          ),
                        ),
                        icon: Icon(
                          FontAwesomeIcons.envelope,
                          color: Colors.white,
                          size: sx(7),
                        ),
                        label: Text('Mail Me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sx(7),
                            )),
                      ),
                      SizedBox(
                        width: sx(16),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          "https://drive.google.com/file/d/1CsAud8tqdv67zshGLVXFstb2OlJRN6jP/view?usp=sharing"
                              .browse();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(sx(3)),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: sx(1),
                            ),
                          )),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(
                              horizontal: sx(8),
                              vertical: sx(8),
                            ),
                          ),
                        ),
                        icon: Icon(
                          FontAwesomeIcons.download,
                          color: Colors.black,
                          size: sx(7),
                        ),
                        label: Text('Download Resume',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: sx(7),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  child: SvgPicture.asset(
                    'assets/images/bullet_points.svg',
                    width: sx(60),
                    height: sx(60),
                  ),
                  bottom: 0,
                  left: 0,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffEEBf63).withAlpha(170),
                  radius: sx(60),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(sx(60)),
                      child: Image.asset(
                        "assets/images/profile_image.png",
                        fit: BoxFit.cover,
                        width: sx(100),
                        height: sx(100),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
