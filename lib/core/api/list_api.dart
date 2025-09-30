class ListAPI {
  ListAPI._();

  static const String login = "/sign-in";
  static const String logout = "/user/logout";
  static const String forgotPassword = "/forgot-password/request";
  static const String resetPassword = "/reset-password";
  static const String refreshToken = "/refresh-token";
  static const String faceRegisterCheck = "/face-recognition/check";
  static const String faceRecognitionLogin = "/face-recognition/login";
  static const String faceRecognitionRegister = "/face-recognition/register";
  static const String faceRecognitionConfirm = "/face-recognition/confirm";
  static const String mobileVersioning = "/mobile-version";
  static const String absence = "/face-recognition/absence";
  static const String absenceCurrentMonth = "/user/absence/summary";
  static const String todayAbsence = "/employee/absence/current";
  static String absenceHistory(
    String sort,
    String filter,
    String period,
  ) {
    return "/employee/absence/history?sort=$sort&filter=$filter&period=$period";
  }

  static const String userProfile = "/user";
  static const String changePassword = "/change-password";
  static const String editProfile = "/user";
  static const String changePicture = "/user/picture";
}
