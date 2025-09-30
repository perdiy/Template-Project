import 'package:get_it/get_it.dart';
import 'package:operation/core/core.dart';
import 'package:operation/features/features.dart';
import 'package:operation/utils/utils.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  if (isHiveEnable) {
    await _initHiveBoxes(isUnitTest: isUnitTest, prefixBox: prefixBox);
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

/// Register repositories
void _repositories() {
  // Versioning
  sl.registerLazySingleton<VersionRepository>(
    () => VersionRepositoryImpl(sl(), sl()),
  );

  // Auth
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl(),
      sl(),
      // sl(),
    ),
  );

  // Profile
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(sl(), sl()),
  );
}

/// Register dataSources
void _dataSources() {
  // Versioning
  sl.registerLazySingleton<VersionRemoteDatasource>(
    () => VersionRemoteDatasourceImpl(sl()),
  );

  // Auth
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl()),
  );

  // Profile
  sl.registerLazySingleton<ProfileRemoteDatasource>(
    () => ProfileRemoteDatasourceImpl(sl()),
  );
}

void _useCase() {
  // Versioning
  sl.registerLazySingleton(() => GetVersion(sl()));

  // Auth
  sl.registerLazySingleton(() => PostLogin(sl()));
  sl.registerLazySingleton(() => PostLogout(sl()));
  sl.registerLazySingleton(() => PostRequestResetPassword(sl()));
  sl.registerLazySingleton(() => PostResetPassword(sl()));

  // Profile
  sl.registerLazySingleton(() => GetProfile(sl()));
  sl.registerLazySingleton(() => PostChangePassword(sl()));
  sl.registerLazySingleton(() => PostEditProfile(sl()));
  sl.registerLazySingleton(() => PostChangePicture(sl()));
}

void _cubit() {
  // Versioning
  sl.registerFactory(() => VersioningCubit(sl()));

  // Auth
  sl.registerFactory(() => AuthCubit(sl()));
  sl.registerFactory(() => LogoutCubit(sl()));
  sl.registerFactory(() => RequestResetPasswordCubit(sl()));
  sl.registerFactory(() => ResetPasswordCubit(sl()));

  // Users
  sl.registerFactory(() => SettingsCubit());
  sl.registerFactory(() => MainCubit());

  // Profile
  sl.registerFactory(() => ProfileCubit(sl()));
  sl.registerFactory(() => ChangePasswordCubit(sl()));
  sl.registerFactory(() => EditProfileCubit(sl()));
  sl.registerFactory(() => ChangePictureCubit(sl()));

  // General
  sl.registerFactory(() => ReloadFormCubit());
}
