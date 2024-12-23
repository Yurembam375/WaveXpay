import 'package:flutter/material.dart';

class RechargeCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String phoneNumber;
  final String lastRechargeInfo;

  const RechargeCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.phoneNumber,
    required this.lastRechargeInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    height: 30,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        phoneNumber,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        lastRechargeInfo,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 38, right: 10),
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
