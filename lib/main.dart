import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:operation/core/core.dart';
import 'package:operation/dependencies_injection.dart';
import 'package:operation/operation_app.dart';
import 'package:operation/utils/utils.dart';

void main() {
  runZonedGuarded(
    /// Lock device orientation to portrait
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// Register Service locator
      await serviceLocator();
      await FirebaseServices.init();

      /// Register Flutter Error and Bloc Observer
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      Bloc.observer = AppBlocObserver();

      return SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]).then((_) => runApp(const OperationApp()));
    },
    (error, stackTrace) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
