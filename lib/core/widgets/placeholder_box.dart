import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PlaceholderBox extends StatelessWidget {
  final double? width;
  final double? height;
  const PlaceholderBox({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width ?? 150,
            height: height ?? 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
