import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

class DatePickerBottomSheet extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? title;
  final Function(DateTime) onDateSelected;

  const DatePickerBottomSheet({
    super.key,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.title,
    required this.onDateSelected,
  });

  @override
  State<DatePickerBottomSheet> createState() => _DatePickerBottomSheetState();

  static Future<void> show({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? title,
    required Function(DateTime) onDateSelected,
  }) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Palette.muted,
      isDismissible: true,
      enableDrag: true,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return DatePickerBottomSheet(
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          title: title,
          onDateSelected: onDateSelected,
        );
      },
    );
  }

  // Helper date
  static String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}

class _DatePickerBottomSheetState extends State<DatePickerBottomSheet> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.space16),
      height: Dimens.datePicker,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title ?? Strings.of(context)!.setTheDates,
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(fontWeight: semiBold),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => context.back(),
              ),
            ],
          ),
          Expanded(
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: widget.firstDate ?? DateTime(1900),
                lastDate: widget.lastDate ?? DateTime.now(),
                selectedDayHighlightColor: Theme.of(context).primaryColor,
                weekdayLabels: [
                  'Sun',
                  'Mon',
                  'Tue',
                  'Wed',
                  'Thu',
                  'Fri',
                  'Sat',
                ],
                weekdayLabelTextStyle: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                firstDayOfWeek: 1, // Monday
                controlsHeight: 50,
                controlsTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                dayTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                disabledDayTextStyle: const TextStyle(color: Colors.grey),
                selectableDayPredicate: (day) {
                  // You can add custom logic here to disable specific days
                  return true;
                },
              ),
              value: [_selectedDate],
              onValueChanged: (dates) {
                if (dates.isNotEmpty) {
                  final selectedDate = dates.first;
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                  widget.onDateSelected(selectedDate);
                  context.back();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
