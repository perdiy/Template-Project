import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oktoast/oktoast.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

extension StringExtension on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  void toToastError(BuildContext context) {
    try {
      final message = isEmpty ? "error" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
        Toast(
          bgColor: Theme.of(context).extension<FungsitamaColors>()!.red,
          icon: Icons.error,
          message: message,
          textColor: Palette.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("error $e");
    }
  }

  void toToastSuccess(BuildContext context) {
    try {
      final message = isEmpty ? "success" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      // showToast(msg)
      showToastWidget(
        Toast(
          bgColor: Theme.of(context).extension<FungsitamaColors>()!.green,
          icon: Icons.check_circle,
          message: message,
          textColor: Palette.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("$e");
    }
  }

  void toToastLoading(BuildContext context) {
    try {
      final message = isEmpty ? "loading" : this;
      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
        Toast(
          bgColor: Theme.of(context).extension<FungsitamaColors>()!.pink,
          icon: Icons.info,
          message: message,
          textColor: Palette.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("$e");
    }
  }

  // Konversi string waktu UTC ke format waktu lokal
  String toLocalTime() {
    if (isEmpty) return '';

    try {
      String dateTimeString = this;

      // Ubah " " menjadi "T"
      if (dateTimeString.contains(' ')) {
        dateTimeString = dateTimeString.replaceAll(' ', 'T');
      }

      // Ubah +00 menjadi Z
      if (dateTimeString.endsWith('+00')) {
        dateTimeString = dateTimeString.replaceAll('+00', 'Z');
      }

      // Jika offset tanpa menit, tambahkan :00
      final regex = RegExp(r'(\+\d{2})$');
      if (regex.hasMatch(dateTimeString)) {
        dateTimeString = dateTimeString.replaceAllMapped(
          regex,
          (m) => '${m[1]}:00',
        );
      }

      final DateTime utcDateTime = DateTime.parse(dateTimeString);
      final DateTime localDateTime = utcDateTime.toLocal();

      return DateFormat('HH:mm').format(localDateTime);
    } catch (e) {
      return this;
    }
  }

  String toStringDateAlt({bool isShort = false, bool isToLocal = true}) {
    try {
      DateTime object;
      if (isToLocal) {
        object = DateTime.parse(this).toLocal();
      } else {
        object = DateTime.parse(this);
      }

      return DateFormat(
        "dd ${isShort ? "MMM" : "MMMM"} yyyy HH:mm",
        "id",
      ).format(object);
    } catch (_) {
      return "-";
    }
  }

  String commonDate() {
    if (isEmpty) return '';

    try {
      final DateTime date = DateTime.parse(this);
      return DateFormat('d MMMM yyyy', 'id').format(date);
    } catch (e) {
      return this;
    }
  }

  String toShortDate() {
    try {
      final date = DateTime.parse(this);
      return DateFormat('yyyy-MM-dd').format(date);
    } catch (e) {
      return this;
    }
  }
}
