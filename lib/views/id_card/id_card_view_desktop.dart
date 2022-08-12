import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class IdCardViewDesktop extends StatelessWidget {
  const IdCardViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) => Padding(
        padding: EdgeInsets.symmetric(horizontal: sx(44.0)),
        child: Container(
          height: sy(370.0),
          decoration: BoxDecoration(
            color: Color(0xffE9E9E9),
            borderRadius: BorderRadius.circular(sx(24.0)),
          ),
          padding:
              EdgeInsets.symmetric(vertical: sy(16.0), horizontal: sx(16.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(sx(24.0)),
                child: Image.asset(
                  'assets/images/mobile_developer.jpg',
                  width: sx(120.0),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: sx(16.0)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: sx(24.0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.add,color: Colors.green,size: sx(24),)
                            ],
                          ),
                          Text(
                            'Completed Projects',
                            style: TextStyle(
                              fontSize: sx(10.0),
                              color: Color(0xff8E8E8E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: sy(16.0)),
                      Text(
                        'Glad to Help You!',
                        style: TextStyle(
                          fontSize: sx(16.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("As a Full Stack Mobile developer, I work closely with my clients to define and develop transformative user experiences across all platforms and brand’s touch points. I am a self-starter and a team player, and I am passionate about creating beautiful, intuitive, and engaging user experiences that drive business growth.",
                        style: TextStyle(
                          fontSize: sx(9.0),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
