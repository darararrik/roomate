import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ru')];

  /// No description provided for @main.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get main;

  /// No description provided for @favorites.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorites;

  /// No description provided for @place.
  ///
  /// In ru, this message translates to:
  /// **'Разместить'**
  String get place;

  /// No description provided for @messages.
  ///
  /// In ru, this message translates to:
  /// **'Сообщения'**
  String get messages;

  /// No description provided for @profile.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profile;

  /// No description provided for @searchRegion.
  ///
  /// In ru, this message translates to:
  /// **'Регион поиска >'**
  String get searchRegion;

  /// No description provided for @apartments.
  ///
  /// In ru, this message translates to:
  /// **'Квартиры'**
  String get apartments;

  /// No description provided for @neighbours.
  ///
  /// In ru, this message translates to:
  /// **'Соседи'**
  String get neighbours;

  /// No description provided for @coworking.
  ///
  /// In ru, this message translates to:
  /// **'Коворкинг'**
  String get coworking;

  /// No description provided for @filters.
  ///
  /// In ru, this message translates to:
  /// **'Фильтры'**
  String get filters;

  /// No description provided for @term.
  ///
  /// In ru, this message translates to:
  /// **'Срок'**
  String get term;

  /// No description provided for @district.
  ///
  /// In ru, this message translates to:
  /// **'Район'**
  String get district;

  /// No description provided for @optionsFound.
  ///
  /// In ru, this message translates to:
  /// **'Найдено вариантов'**
  String get optionsFound;

  /// No description provided for @r.
  ///
  /// In ru, this message translates to:
  /// **'₽'**
  String get r;

  /// No description provided for @r_month.
  ///
  /// In ru, this message translates to:
  /// **'₽/мес.'**
  String get r_month;

  /// No description provided for @map.
  ///
  /// In ru, this message translates to:
  /// **'Карта'**
  String get map;

  /// No description provided for @call.
  ///
  /// In ru, this message translates to:
  /// **'Позвонить'**
  String get call;

  /// No description provided for @write.
  ///
  /// In ru, this message translates to:
  /// **'Написать'**
  String get write;

  /// No description provided for @join.
  ///
  /// In ru, this message translates to:
  /// **'Присоединиться'**
  String get join;

  /// No description provided for @aboutTheGroup.
  ///
  /// In ru, this message translates to:
  /// **'О группе'**
  String get aboutTheGroup;

  /// No description provided for @match.
  ///
  /// In ru, this message translates to:
  /// **'совпадения'**
  String get match;

  /// No description provided for @percent.
  ///
  /// In ru, this message translates to:
  /// **'%'**
  String get percent;

  /// No description provided for @participants.
  ///
  /// In ru, this message translates to:
  /// **'участники'**
  String get participants;

  /// No description provided for @aboutServiceTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сервис по поиску сожителя'**
  String get aboutServiceTitle;

  /// No description provided for @aboutServiceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Найдите соседа в пару кликов - и забудьте о долгих поисках!'**
  String get aboutServiceDescription;

  /// No description provided for @loginByphoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Войти по номеру телефона'**
  String get loginByphoneNumber;

  /// No description provided for @loginViaSocialNetworks.
  ///
  /// In ru, this message translates to:
  /// **'Войти через соц.сети'**
  String get loginViaSocialNetworks;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер телефона'**
  String get enterYourPhoneNumber;

  /// No description provided for @descriptionSMSCode1.
  ///
  /// In ru, this message translates to:
  /// **'На ваш номер придет смс с кодом'**
  String get descriptionSMSCode1;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер'**
  String get enterPhoneNumber;

  /// No description provided for @enterSMSCode.
  ///
  /// In ru, this message translates to:
  /// **'Введите смс-код'**
  String get enterSMSCode;

  /// No description provided for @descriptionSMSCode2.
  ///
  /// In ru, this message translates to:
  /// **'Мы его отправили на ваш номер телефона'**
  String get descriptionSMSCode2;

  /// No description provided for @didntReceiveTheCode.
  ///
  /// In ru, this message translates to:
  /// **'Не пришел код?'**
  String get didntReceiveTheCode;

  /// No description provided for @sendAgain.
  ///
  /// In ru, this message translates to:
  /// **'Отправить еще раз'**
  String get sendAgain;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @age.
  ///
  /// In ru, this message translates to:
  /// **'Возраст'**
  String get age;

  /// No description provided for @gender.
  ///
  /// In ru, this message translates to:
  /// **'Пол'**
  String get gender;

  /// No description provided for @tellUsAboutYourself1.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите о себе'**
  String get tellUsAboutYourself1;

  /// No description provided for @tellUsAboutYourself2.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите немного о себе, чтобы помочь потенциальным соседям лучше о вас узнать'**
  String get tellUsAboutYourself2;

  /// No description provided for @almostDone1.
  ///
  /// In ru, this message translates to:
  /// **'Почти готово!'**
  String get almostDone1;

  /// No description provided for @almostDone2.
  ///
  /// In ru, this message translates to:
  /// **'Осталось пройти верификацию'**
  String get almostDone2;

  /// No description provided for @almostDone3.
  ///
  /// In ru, this message translates to:
  /// **'С проверенным профилем шанс найти соседа выше, рекомендуем пройти'**
  String get almostDone3;

  /// No description provided for @uploadDocument.
  ///
  /// In ru, this message translates to:
  /// **'Загрузите документ'**
  String get uploadDocument;

  /// No description provided for @skip.
  ///
  /// In ru, this message translates to:
  /// **'Пропустить'**
  String get skip;

  /// No description provided for @confirmation.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение'**
  String get confirmation;

  /// No description provided for @whatUname.
  ///
  /// In ru, this message translates to:
  /// **'Как вас зовут?'**
  String get whatUname;

  /// No description provided for @whatURealName.
  ///
  /// In ru, this message translates to:
  /// **'Лучше написать настоящее имя'**
  String get whatURealName;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @quiz_q1_title.
  ///
  /// In ru, this message translates to:
  /// **'С чем вам помочь?'**
  String get quiz_q1_title;

  /// No description provided for @quiz_q1_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Настроим поиск для вашего удобства'**
  String get quiz_q1_subtitle;

  /// No description provided for @quiz_q1_opt1.
  ///
  /// In ru, this message translates to:
  /// **'Найти помещение'**
  String get quiz_q1_opt1;

  /// No description provided for @quiz_q1_opt2.
  ///
  /// In ru, this message translates to:
  /// **'Сдать помещение'**
  String get quiz_q1_opt2;

  /// No description provided for @quiz_q1_opt3.
  ///
  /// In ru, this message translates to:
  /// **'Я просто посмотреть'**
  String get quiz_q1_opt3;

  /// No description provided for @quiz_q2_title.
  ///
  /// In ru, this message translates to:
  /// **'Хотите создать объявление?'**
  String get quiz_q2_title;

  /// No description provided for @quiz_q2_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете это сделать позже'**
  String get quiz_q2_subtitle;

  /// No description provided for @quiz_q2_opt1.
  ///
  /// In ru, this message translates to:
  /// **'Разместить объявление'**
  String get quiz_q2_opt1;

  /// No description provided for @quiz_q2_opt2.
  ///
  /// In ru, this message translates to:
  /// **'Пропустить'**
  String get quiz_q2_opt2;

  /// No description provided for @support.
  ///
  /// In ru, this message translates to:
  /// **'Поддержка'**
  String get support;

  /// No description provided for @settings.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get settings;

  /// No description provided for @verification.
  ///
  /// In ru, this message translates to:
  /// **'Верификация'**
  String get verification;

  /// No description provided for @profile_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Изменение ваших данных'**
  String get profile_subtitle;

  /// No description provided for @verification_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение вашего профиля'**
  String get verification_subtitle;

  /// No description provided for @support_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Сообщите о проблеме'**
  String get support_subtitle;

  /// No description provided for @settings_subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Ваш аккаунт, уведомления'**
  String get settings_subtitle;

  /// No description provided for @basicSection.
  ///
  /// In ru, this message translates to:
  /// **'Основные'**
  String get basicSection;

  /// No description provided for @traitSociability.
  ///
  /// In ru, this message translates to:
  /// **'Общительность'**
  String get traitSociability;

  /// No description provided for @traitBadHabits.
  ///
  /// In ru, this message translates to:
  /// **'Вредные привычки'**
  String get traitBadHabits;

  /// No description provided for @traitGuestFrequency.
  ///
  /// In ru, this message translates to:
  /// **'Частота гостей'**
  String get traitGuestFrequency;

  /// No description provided for @traitSleepMode.
  ///
  /// In ru, this message translates to:
  /// **'Режим сна'**
  String get traitSleepMode;

  /// No description provided for @traitPetAttitude.
  ///
  /// In ru, this message translates to:
  /// **'Отношение к животным'**
  String get traitPetAttitude;

  /// No description provided for @roommateSearchSection.
  ///
  /// In ru, this message translates to:
  /// **'Какого соседа ищите?'**
  String get roommateSearchSection;

  /// No description provided for @traitGender.
  ///
  /// In ru, this message translates to:
  /// **'Пол'**
  String get traitGender;

  /// No description provided for @traitAge.
  ///
  /// In ru, this message translates to:
  /// **'Возраст'**
  String get traitAge;

  /// No description provided for @editPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Изменить фото'**
  String get editPhoto;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @notifications.
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get notifications;

  /// No description provided for @login.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logout;

  /// No description provided for @register.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация'**
  String get register;

  /// No description provided for @password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get password;

  /// No description provided for @email.
  ///
  /// In ru, this message translates to:
  /// **'Электронная почта'**
  String get email;

  /// No description provided for @confirm.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать'**
  String get edit;

  /// No description provided for @back.
  ///
  /// In ru, this message translates to:
  /// **'Назад'**
  String get back;

  /// No description provided for @error.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка'**
  String get error;

  /// No description provided for @loading.
  ///
  /// In ru, this message translates to:
  /// **'Загрузка...'**
  String get loading;

  /// No description provided for @tryAgain.
  ///
  /// In ru, this message translates to:
  /// **'Повторить попытку'**
  String get tryAgain;

  /// No description provided for @success.
  ///
  /// In ru, this message translates to:
  /// **'Успешно'**
  String get success;

  /// No description provided for @yes.
  ///
  /// In ru, this message translates to:
  /// **'Да'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get no;

  /// No description provided for @ok.
  ///
  /// In ru, this message translates to:
  /// **'ОК'**
  String get ok;

  /// No description provided for @close.
  ///
  /// In ru, this message translates to:
  /// **'Закрыть'**
  String get close;

  /// No description provided for @home.
  ///
  /// In ru, this message translates to:
  /// **'Домой'**
  String get home;

  /// No description provided for @details.
  ///
  /// In ru, this message translates to:
  /// **'Подробнее'**
  String get details;

  /// No description provided for @about.
  ///
  /// In ru, this message translates to:
  /// **'О приложении'**
  String get about;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In ru, this message translates to:
  /// **'Тема'**
  String get theme;

  /// No description provided for @darkMode.
  ///
  /// In ru, this message translates to:
  /// **'Тёмная тема'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In ru, this message translates to:
  /// **'Светлая тема'**
  String get lightMode;

  /// No description provided for @welcome.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать'**
  String get welcome;

  /// No description provided for @signIn.
  ///
  /// In ru, this message translates to:
  /// **'Войти в аккаунт'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In ru, this message translates to:
  /// **'Создать аккаунт'**
  String get signUp;

  /// No description provided for @forgotPassword.
  ///
  /// In ru, this message translates to:
  /// **'Забыли пароль?'**
  String get forgotPassword;

  /// No description provided for @send.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get send;

  /// No description provided for @retry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get retry;

  /// No description provided for @done.
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get done;

  /// No description provided for @add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get add;

  /// No description provided for @remove.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get remove;

  /// No description provided for @update.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get update;

  /// No description provided for @viewAll.
  ///
  /// In ru, this message translates to:
  /// **'Показать всё'**
  String get viewAll;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
