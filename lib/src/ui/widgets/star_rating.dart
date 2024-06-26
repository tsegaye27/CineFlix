import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double voteAverage;
  final double? iconSize;
  const StarRating({super.key, required this.voteAverage, this.iconSize});

  @override
  Widget build(BuildContext context) {
    int numberOfStars = (voteAverage / 2).round();
    return Row(
      children: List.generate(5, (index) {
        if (index < numberOfStars) {
          return Icon(
            Icons.star,
            color: Colors.amber,
            size: iconSize,
          );
        } else {
          return Icon(
            Icons.star_border,
            color: Colors.amber,
            size: iconSize,
          );
        }
      }),
    );
  }
}
