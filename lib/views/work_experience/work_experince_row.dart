import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class WorkExperienceRow extends StatelessWidget {
  final String companyName;
  final String position;
  final List<String> description;
  final String startDate;
  final String endDate;
  final String location;
  final String image;

  const WorkExperienceRow({
    Key? key,
    required this.companyName,
    required this.position,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: sx(8.0)),
        child: Container(
          height: sy(400.0),
          width: sx(220.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Material(
                  elevation: sx(2.0),
                  borderRadius: BorderRadius.circular(sx(24.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(sx(24.0)),
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: sy(5.0)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            companyName,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: sx(16),
                            ),
                          ),
                        ),
                        Text(
                          startDate + ' - ' + endDate,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: sx(8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Text(
                        position,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: sx(12),
                        ),
                      ),
                    ),
                    SizedBox(height: sy(5.0)),
                    ...(description.length > 1
                        ? description.sublist(0, 1)
                        : description)
                        .map(
                          (e) => Flexible(
                            child: Text(
                        "- $e",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: sx(8),
                        ),
                        maxLines: 2,
                      ),
                          ),
                    )
                        .toList(),
                    SizedBox(height: sy(5.0)),
                    InkWell(
                      onTap: () {

                      },

                      child: Text(
                        "show More",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: sx(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      );
    });
  }
}
