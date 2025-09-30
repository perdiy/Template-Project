import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class ButtonSelectMonth extends StatefulWidget {
  const ButtonSelectMonth({super.key});

  @override
  State<ButtonSelectMonth> createState() => _ButtonSelectMonthState();
}

class _ButtonSelectMonthState extends State<ButtonSelectMonth> {
  String? selectedYear;
  String? selectedMonth;

  void _showBottomSheet() {
    final int currentYear = DateTime.now().year;
    final List<int> years = List.generate(
      5,
      (index) => currentYear - 3 + index,
    );
    final List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    String? expandedYear;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.of(context)!.selectMonth,
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(fontWeight: medium),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.back();
                          },
                          child: Icon(Icons.close, size: Dimens.space18),
                        ),
                      ],
                    ),
                    const SpacerV(),
                    Expanded(
                      child: ListView(
                        children: years.map((year) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    expandedYear =
                                        expandedYear == year.toString()
                                        ? null
                                        : year.toString();
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        year.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              fontWeight: regular,
                                              color: Palette.popoverForeground,
                                            ),
                                      ),
                                      Icon(
                                        expandedYear == year.toString()
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                        size: Dimens.space20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (expandedYear == year.toString())
                                Column(
                                  children: months.map((month) {
                                    final bool isSelected =
                                        selectedYear == year.toString() &&
                                        selectedMonth == month;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedYear = year.toString();
                                          selectedMonth = month;
                                          context.back();
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.grey.shade200,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.check,
                                              color: isSelected
                                                  ? Palette.text
                                                  : Colors.transparent,
                                              size: Dimens.space18,
                                            ),
                                            const SpacerH(),
                                            Text(
                                              month,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge
                                                  ?.copyWith(
                                                    fontWeight: regular,
                                                    color: Palette
                                                        .popoverForeground,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showBottomSheet,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Palette.muted,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedYear != null && selectedMonth != null
                  ? '$selectedMonth, $selectedYear'
                  : 'Select Month',
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: medium),
              overflow: TextOverflow.ellipsis,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
              size: Dimens.space24,
            ),
          ],
        ),
      ),
    );
  }
}
