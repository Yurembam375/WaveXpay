import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class TravelCardWidget extends StatelessWidget {
  final String title;
  final List<Map<String, String>> travelOptions;
  final Function(String label)? onOptionTap;

  const TravelCardWidget({
    super.key,
    required this.title,
    required this.travelOptions,
    this.onOptionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 140.h,
        width: 360.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: travelOptions
                  .map(
                    (option) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (onOptionTap != null) {
                              onOptionTap!(option["label"]!);
                            }
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                            child: Center(
                              child: Image.asset(
                                option["imagePath"]!,
                                height: 50,
                                width: 40,
                                color: HexColor("#05099F"),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          option["label"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
