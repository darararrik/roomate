class ProfileMockJson {
  static Map<String, dynamic> successUserModel = {
    "id": 1,
    "name": "Дамир",
    "last_name": "Имьяминов",
    "phone": "+7 927 777-77-77",
    "gender": "male",
    "birthdate": "2005-07-25",
    "age": 20,
    "city": "Омск",
    "photo": "",
    "status": "unverified",
    "tags": [],
  };
  static String errorVerificationCode = "Неверный код";

  static bool isReservationReminder = true;

  static List successFetchAllLanguage = [
    {"name": "Русский", "id": 1, "localName": "ru", "localRegion": "RU"},
    {"name": "English", "id": 2, "localName": "en", "localRegion": "EN"},
  ];

  static Map<String, dynamic> error500 = {
    "type": "https://tools.ietf.org/html/rfc9110#section-15.6.1",
    "title": "An error occurred while processing your request.",
    "generalServerErrorCode": 401,
    "detail": "Непредвиденное исключение",
  };
}
