import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operation/core/core.dart';
import 'package:operation/utils/utils.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const _Loading());

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  late List<DataHelper> dataMenus;

  void updateIndex(int index, {BuildContext? context}) {
    emit(const _Loading());
    _currentIndex = index;
    if (context != null) {
      initMenu(context);
    }
    emit(_Success(dataMenus[_currentIndex]));
  }

  void initMenu(BuildContext context) {
    dataMenus = [
      DataHelper(title: Strings.of(context)!.home, isSelected: true),
      DataHelper(title: Strings.of(context)!.logout),
    ];
    updateIndex(_currentIndex);
  }

  bool onBackPressed(
    BuildContext context,
    GlobalKey<ScaffoldState> scaffoldState,
  ) {
    if (dataMenus[_currentIndex].title == Strings.of(context)!.home) {
      return true;
    } else {
      // Balikin ke menu Home (misalnya index 0)
      for (final menu in dataMenus) {
        menu.isSelected = menu.title == Strings.of(context)!.home;
      }
      _currentIndex = dataMenus.indexWhere((menu) => menu.isSelected);
      return false;
    }
  }
}
