import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Color bgColor;
  const ExerciseItem(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                color: Color(0xFFf0f9fa),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Image.asset(
              imageUrl,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
