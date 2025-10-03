import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:operation/core/core.dart';

class HeaderPage extends StatelessWidget {
  final String imagePath;
  final DateTime? date;
  final String title;

  const HeaderPage({
    super.key,
    required this.imagePath,
    this.date,
    required this.title,
  });

  String _formatDate(DateTime date) {
    // Format: 28 Sept 2025
    return DateFormat("dd MMM yyyy", "id_ID").format(date);
  }

  @override
  Widget build(BuildContext context) {
    final now = date ?? DateTime.now();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath, width: Dimens.newsHeight),
            Text(
              _formatDate(now),
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: semiBold),
            ),
          ],
        ),
        SpacerV(value: Dimens.space5),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.space15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
      ],
    );
  }
}
