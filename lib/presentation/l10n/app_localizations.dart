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

  /// No description provided for @russian.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get russian;

  /// No description provided for @russiaPhonePrefix.
  ///
  /// In ru, this message translates to:
  /// **'+7'**
  String get russiaPhonePrefix;

  /// No description provided for @phonePlaceholder.
  ///
  /// In ru, this message translates to:
  /// **'(900) 000-00-00'**
  String get phonePlaceholder;

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

  /// No description provided for @postAd.
  ///
  /// In ru, this message translates to:
  /// **'Разместить'**
  String get postAd;

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
  /// **'Помещения'**
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

  /// No description provided for @currencySymbol.
  ///
  /// In ru, this message translates to:
  /// **'₽'**
  String get currencySymbol;

  /// No description provided for @currencyPerMonth.
  ///
  /// In ru, this message translates to:
  /// **'₽/мес.'**
  String get currencyPerMonth;

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
  /// **'Сервис по поиску помещений и сожителей'**
  String get aboutServiceTitle;

  /// No description provided for @aboutServiceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Найдите соседа в пару кликов - и забудьте о долгих поисках!'**
  String get aboutServiceDescription;

  /// No description provided for @loginByPhoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Войти по номеру телефона'**
  String get loginByPhoneNumber;

  /// No description provided for @loginByGuest.
  ///
  /// In ru, this message translates to:
  /// **'Войти как гость'**
  String get loginByGuest;

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

  /// No description provided for @descriptionSMSCode.
  ///
  /// In ru, this message translates to:
  /// **'Мы отправим код подтверждения'**
  String get descriptionSMSCode;

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

  /// No description provided for @tellUsAboutYourselfTitle.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите о себе'**
  String get tellUsAboutYourselfTitle;

  /// No description provided for @tellUsAboutYourselfSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите немного о себе, чтобы помочь потенциальным соседям лучше о вас узнать'**
  String get tellUsAboutYourselfSubtitle;

  /// No description provided for @almostDoneTitle.
  ///
  /// In ru, this message translates to:
  /// **'Почти готово!'**
  String get almostDoneTitle;

  /// No description provided for @verificationRequired.
  ///
  /// In ru, this message translates to:
  /// **'Осталось пройти верификацию'**
  String get verificationRequired;

  /// No description provided for @verificationTip.
  ///
  /// In ru, this message translates to:
  /// **'С проверенным профилем шанс найти соседа выше, рекомендуем пройти'**
  String get verificationTip;

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

  /// No description provided for @whatsYourName.
  ///
  /// In ru, this message translates to:
  /// **'Как вас зовут?'**
  String get whatsYourName;

  /// No description provided for @betterToUseRealName.
  ///
  /// In ru, this message translates to:
  /// **'Лучше написать настоящее имя'**
  String get betterToUseRealName;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @lastName.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия'**
  String get lastName;

  /// No description provided for @quizQ1Title.
  ///
  /// In ru, this message translates to:
  /// **'Как вы хотите войти?'**
  String get quizQ1Title;

  /// No description provided for @quizQ1Subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Выберите свою роль в сервисе'**
  String get quizQ1Subtitle;

  /// No description provided for @quizQ1Opt1.
  ///
  /// In ru, this message translates to:
  /// **'Ищу квартиру'**
  String get quizQ1Opt1;

  /// No description provided for @quizQ1Opt2.
  ///
  /// In ru, this message translates to:
  /// **'Хочу сдать помещение'**
  String get quizQ1Opt2;

  /// No description provided for @quizQ2Title.
  ///
  /// In ru, this message translates to:
  /// **'Хотите создать объявление?'**
  String get quizQ2Title;

  /// No description provided for @quizQ2Subtitle.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете это сделать позже'**
  String get quizQ2Subtitle;

  /// No description provided for @quizQ2Opt1.
  ///
  /// In ru, this message translates to:
  /// **'Разместить объявление'**
  String get quizQ2Opt1;

  /// No description provided for @quizQ2Opt2.
  ///
  /// In ru, this message translates to:
  /// **'Пропустить'**
  String get quizQ2Opt2;

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

  /// No description provided for @profileSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Изменение ваших данных'**
  String get profileSubtitle;

  /// No description provided for @verificationSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение вашего профиля'**
  String get verificationSubtitle;

  /// No description provided for @supportSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Сообщите о проблеме'**
  String get supportSubtitle;

  /// No description provided for @settingsSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Ваш аккаунт, уведомления'**
  String get settingsSubtitle;

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

  /// No description provided for @updateData.
  ///
  /// In ru, this message translates to:
  /// **'Изменение данных'**
  String get updateData;

  /// No description provided for @apply.
  ///
  /// In ru, this message translates to:
  /// **'Применить'**
  String get apply;

  /// No description provided for @typeOfProperty.
  ///
  /// In ru, this message translates to:
  /// **'Вид недвижимости'**
  String get typeOfProperty;

  /// No description provided for @reset.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить'**
  String get reset;

  /// No description provided for @location.
  ///
  /// In ru, this message translates to:
  /// **'Расположение'**
  String get location;

  /// No description provided for @rentPeriod.
  ///
  /// In ru, this message translates to:
  /// **'Срок проживания'**
  String get rentPeriod;

  /// No description provided for @toSort.
  ///
  /// In ru, this message translates to:
  /// **'Сортировать'**
  String get toSort;

  /// No description provided for @selectDistrict.
  ///
  /// In ru, this message translates to:
  /// **'Выберите район'**
  String get selectDistrict;

  /// No description provided for @selectRegion.
  ///
  /// In ru, this message translates to:
  /// **'Выберите регион'**
  String get selectRegion;

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

  /// No description provided for @messageHint.
  ///
  /// In ru, this message translates to:
  /// **'Сообщение..'**
  String get messageHint;

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

  /// No description provided for @advertisementSuccessfullyCreated.
  ///
  /// In ru, this message translates to:
  /// **'Объявление успешно создано!'**
  String get advertisementSuccessfullyCreated;

  /// No description provided for @editOrSupplementAdvertisement.
  ///
  /// In ru, this message translates to:
  /// **'Изменить или дополнить объявление можно в профиле, в разделе «Мои объявления».'**
  String get editOrSupplementAdvertisement;

  /// No description provided for @wrongCode.
  ///
  /// In ru, this message translates to:
  /// **'Некорректный код телефона'**
  String get wrongCode;

  /// No description provided for @letsGetToKnowEachOther.
  ///
  /// In ru, this message translates to:
  /// **'Давайте познакомимся'**
  String get letsGetToKnowEachOther;

  /// No description provided for @pleaseProvideRealData.
  ///
  /// In ru, this message translates to:
  /// **'Укажите реальные данные для вашего профиля'**
  String get pleaseProvideRealData;

  /// No description provided for @genderMale.
  ///
  /// In ru, this message translates to:
  /// **'Мужской'**
  String get genderMale;

  /// No description provided for @genderFemale.
  ///
  /// In ru, this message translates to:
  /// **'Женский'**
  String get genderFemale;

  /// No description provided for @personalityIntrovert.
  ///
  /// In ru, this message translates to:
  /// **'Интроверт'**
  String get personalityIntrovert;

  /// No description provided for @personalityAmbivert.
  ///
  /// In ru, this message translates to:
  /// **'Амбиверт'**
  String get personalityAmbivert;

  /// No description provided for @personalityExtrovert.
  ///
  /// In ru, this message translates to:
  /// **'Экстраверт'**
  String get personalityExtrovert;

  /// No description provided for @habitSmoking.
  ///
  /// In ru, this message translates to:
  /// **'Курение'**
  String get habitSmoking;

  /// No description provided for @habitAlcohol.
  ///
  /// In ru, this message translates to:
  /// **'Алкоголь'**
  String get habitAlcohol;

  /// No description provided for @habitProfanity.
  ///
  /// In ru, this message translates to:
  /// **'Ненормативная лексика'**
  String get habitProfanity;

  /// No description provided for @frequencyNever.
  ///
  /// In ru, this message translates to:
  /// **'Не привожу'**
  String get frequencyNever;

  /// No description provided for @frequencySometimes.
  ///
  /// In ru, this message translates to:
  /// **'Иногда'**
  String get frequencySometimes;

  /// No description provided for @frequencyOften.
  ///
  /// In ru, this message translates to:
  /// **'Часто'**
  String get frequencyOften;

  /// No description provided for @lifestyleEarlyBird.
  ///
  /// In ru, this message translates to:
  /// **'Жаворонок'**
  String get lifestyleEarlyBird;

  /// No description provided for @lifestyleNightOwl.
  ///
  /// In ru, this message translates to:
  /// **'Сова'**
  String get lifestyleNightOwl;

  /// No description provided for @lifestyleNoRoutine.
  ///
  /// In ru, this message translates to:
  /// **'Без режима'**
  String get lifestyleNoRoutine;

  /// No description provided for @almostDone.
  ///
  /// In ru, this message translates to:
  /// **'Почти готово!'**
  String get almostDone;

  /// No description provided for @verificationRemaining.
  ///
  /// In ru, this message translates to:
  /// **'Осталось пройти верификацию'**
  String get verificationRemaining;

  /// No description provided for @gosuslugiVerificationDescription.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердите свою учетную запись на портале Госуслуг.'**
  String get gosuslugiVerificationDescription;

  /// No description provided for @verifyDataCorrectness.
  ///
  /// In ru, this message translates to:
  /// **'Убедитесь в корректности выбранных данных'**
  String get verifyDataCorrectness;

  /// No description provided for @passportBindingInfo.
  ///
  /// In ru, this message translates to:
  /// **'Ваш паспорт будет привязан к вашему аккаунту'**
  String get passportBindingInfo;

  /// No description provided for @checkPassport.
  ///
  /// In ru, this message translates to:
  /// **'Проверьте паспорт'**
  String get checkPassport;

  /// No description provided for @passportSeriesAndNumber.
  ///
  /// In ru, this message translates to:
  /// **'Серия и номер'**
  String get passportSeriesAndNumber;

  /// No description provided for @passportIssueDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата выдачи'**
  String get passportIssueDate;

  /// No description provided for @passportDepartmentCode.
  ///
  /// In ru, this message translates to:
  /// **'Код подразделения'**
  String get passportDepartmentCode;

  /// No description provided for @passportBirthPlace.
  ///
  /// In ru, this message translates to:
  /// **'Место рождения'**
  String get passportBirthPlace;

  /// No description provided for @passportBirthDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата рождения'**
  String get passportBirthDate;

  /// No description provided for @documentsUnderReview.
  ///
  /// In ru, this message translates to:
  /// **'Ваши документы на проверке'**
  String get documentsUnderReview;

  /// No description provided for @verificationWaitTime.
  ///
  /// In ru, this message translates to:
  /// **'Проверка займёт некоторое время. Статус можно отслеживать в профиле.'**
  String get verificationWaitTime;

  /// No description provided for @verificationSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Верификация пройдена!'**
  String get verificationSuccess;

  /// No description provided for @verificationSuccessDescription.
  ///
  /// In ru, this message translates to:
  /// **'Ваши документы проверены. Продолжайте поиск с преимуществом'**
  String get verificationSuccessDescription;

  /// No description provided for @verificationFailed.
  ///
  /// In ru, this message translates to:
  /// **'Верификация не пройдена'**
  String get verificationFailed;

  /// No description provided for @verificationFailedDescription.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так. Повторите попытку позже.'**
  String get verificationFailedDescription;

  /// No description provided for @yourGender.
  ///
  /// In ru, this message translates to:
  /// **'Ваш пол'**
  String get yourGender;

  /// No description provided for @confirmThroughGosuslugi.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить через Госуслуги'**
  String get confirmThroughGosuslugi;

  /// No description provided for @photoAndVideo.
  ///
  /// In ru, this message translates to:
  /// **'Фото и видео квартиры'**
  String get photoAndVideo;

  /// No description provided for @apartmentFeatures.
  ///
  /// In ru, this message translates to:
  /// **'Особенности квартиры'**
  String get apartmentFeatures;

  /// No description provided for @apartmentItems.
  ///
  /// In ru, this message translates to:
  /// **'Вещи в квартире'**
  String get apartmentItems;

  /// No description provided for @dealTerms.
  ///
  /// In ru, this message translates to:
  /// **'Условия сделки'**
  String get dealTerms;

  /// No description provided for @advertisementDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание объявления'**
  String get advertisementDescription;

  /// No description provided for @contacts.
  ///
  /// In ru, this message translates to:
  /// **'Контакты'**
  String get contacts;

  /// No description provided for @checkAdvertisement.
  ///
  /// In ru, this message translates to:
  /// **'Проверьте объявление'**
  String get checkAdvertisement;

  /// No description provided for @newAdvertisement.
  ///
  /// In ru, this message translates to:
  /// **'Новое объявление'**
  String get newAdvertisement;

  /// No description provided for @propertyData.
  ///
  /// In ru, this message translates to:
  /// **'Параметры недвижимости'**
  String get propertyData;

  /// No description provided for @apartmentRent.
  ///
  /// In ru, this message translates to:
  /// **'Данные недвижимости'**
  String get apartmentRent;

  /// No description provided for @deposit.
  ///
  /// In ru, this message translates to:
  /// **'Залог'**
  String get deposit;

  /// No description provided for @forExampleDeposit.
  ///
  /// In ru, this message translates to:
  /// **'Например: 20000'**
  String get forExampleDeposit;

  /// No description provided for @advertisement.
  ///
  /// In ru, this message translates to:
  /// **'Объявление'**
  String get advertisement;

  /// No description provided for @wantToExit.
  ///
  /// In ru, this message translates to:
  /// **'Хотите выйти?'**
  String get wantToExit;

  /// No description provided for @draftWillBeSaved.
  ///
  /// In ru, this message translates to:
  /// **'Черновик сохранится, можете продолжить заполнение позже'**
  String get draftWillBeSaved;

  /// No description provided for @stay.
  ///
  /// In ru, this message translates to:
  /// **'Остаться'**
  String get stay;

  /// No description provided for @exit.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get exit;

  /// No description provided for @rent.
  ///
  /// In ru, this message translates to:
  /// **'Аренда'**
  String get rent;

  /// No description provided for @longTerm.
  ///
  /// In ru, this message translates to:
  /// **'Долгосрочная'**
  String get longTerm;

  /// No description provided for @daily.
  ///
  /// In ru, this message translates to:
  /// **'Посуточно'**
  String get daily;

  /// No description provided for @trade.
  ///
  /// In ru, this message translates to:
  /// **'Обмен'**
  String get trade;

  /// No description provided for @whoReadyToRentTo.
  ///
  /// In ru, this message translates to:
  /// **'Кому готов сдавать'**
  String get whoReadyToRentTo;

  /// No description provided for @toOnePerson.
  ///
  /// In ru, this message translates to:
  /// **'Одному человеку'**
  String get toOnePerson;

  /// No description provided for @toGroup.
  ///
  /// In ru, this message translates to:
  /// **'Компании'**
  String get toGroup;

  /// No description provided for @toFamily.
  ///
  /// In ru, this message translates to:
  /// **'Семье'**
  String get toFamily;

  /// No description provided for @toStudents.
  ///
  /// In ru, this message translates to:
  /// **'Студентам'**
  String get toStudents;

  /// No description provided for @longTermRent.
  ///
  /// In ru, this message translates to:
  /// **'Долгосрочная аренда'**
  String get longTermRent;

  /// No description provided for @whatTypeOfRoom.
  ///
  /// In ru, this message translates to:
  /// **'Какое у вас помещение?'**
  String get whatTypeOfRoom;

  /// No description provided for @residential.
  ///
  /// In ru, this message translates to:
  /// **'Жилое'**
  String get residential;

  /// No description provided for @commercial.
  ///
  /// In ru, this message translates to:
  /// **'Коммерческое'**
  String get commercial;

  /// No description provided for @whatIsYourAddress.
  ///
  /// In ru, this message translates to:
  /// **'Какой у вас адрес?'**
  String get whatIsYourAddress;

  /// No description provided for @moscowCity.
  ///
  /// In ru, this message translates to:
  /// **'г. Москва'**
  String get moscowCity;

  /// No description provided for @locationDetailsHint.
  ///
  /// In ru, this message translates to:
  /// **'Метро, район, адрес, шоссе, ЖК'**
  String get locationDetailsHint;

  /// No description provided for @apartment.
  ///
  /// In ru, this message translates to:
  /// **'Квартира'**
  String get apartment;

  /// No description provided for @apartmentsRoom.
  ///
  /// In ru, this message translates to:
  /// **'Апартаменты'**
  String get apartmentsRoom;

  /// No description provided for @room.
  ///
  /// In ru, this message translates to:
  /// **'Комната'**
  String get room;

  /// No description provided for @bedPlace.
  ///
  /// In ru, this message translates to:
  /// **'Койко-место'**
  String get bedPlace;

  /// No description provided for @house.
  ///
  /// In ru, this message translates to:
  /// **'Дом'**
  String get house;

  /// No description provided for @cottage.
  ///
  /// In ru, this message translates to:
  /// **'Коттедж'**
  String get cottage;

  /// No description provided for @townhouse.
  ///
  /// In ru, this message translates to:
  /// **'Таунхаус'**
  String get townhouse;

  /// No description provided for @apartmentNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер квартиры'**
  String get apartmentNumber;

  /// No description provided for @enterApartmentNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер квартиры'**
  String get enterApartmentNumber;

  /// No description provided for @notVisibleInAd.
  ///
  /// In ru, this message translates to:
  /// **'В объявлении видно не будет'**
  String get notVisibleInAd;

  /// No description provided for @numberOfRooms.
  ///
  /// In ru, this message translates to:
  /// **'Количество комнат'**
  String get numberOfRooms;

  /// No description provided for @studio.
  ///
  /// In ru, this message translates to:
  /// **'Студия'**
  String get studio;

  /// No description provided for @openPlan.
  ///
  /// In ru, this message translates to:
  /// **'Свободная планировка'**
  String get openPlan;

  /// No description provided for @apartmentArea.
  ///
  /// In ru, this message translates to:
  /// **'Площадь квартиры'**
  String get apartmentArea;

  /// No description provided for @enterApartmentArea.
  ///
  /// In ru, this message translates to:
  /// **'Введите площадь квартиры'**
  String get enterApartmentArea;

  /// No description provided for @layout.
  ///
  /// In ru, this message translates to:
  /// **'Планировка'**
  String get layout;

  /// No description provided for @adjoining.
  ///
  /// In ru, this message translates to:
  /// **'Смежная'**
  String get adjoining;

  /// No description provided for @isolated.
  ///
  /// In ru, this message translates to:
  /// **'Изолированная'**
  String get isolated;

  /// No description provided for @combinedLayout.
  ///
  /// In ru, this message translates to:
  /// **'Смежно-изолированная'**
  String get combinedLayout;

  /// No description provided for @floor.
  ///
  /// In ru, this message translates to:
  /// **'Этаж'**
  String get floor;

  /// No description provided for @enterFloor.
  ///
  /// In ru, this message translates to:
  /// **'Введите этаж'**
  String get enterFloor;

  /// No description provided for @floorsInBuilding.
  ///
  /// In ru, this message translates to:
  /// **'Этажей в доме'**
  String get floorsInBuilding;

  /// No description provided for @numberOfFloors.
  ///
  /// In ru, this message translates to:
  /// **'Количество этажей'**
  String get numberOfFloors;

  /// No description provided for @addPhotos.
  ///
  /// In ru, this message translates to:
  /// **'Добавьте фотографии'**
  String get addPhotos;

  /// No description provided for @minPhotosCount.
  ///
  /// In ru, this message translates to:
  /// **'Количество - минимум 5'**
  String get minPhotosCount;

  /// No description provided for @addPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Добавить фото'**
  String get addPhoto;

  /// No description provided for @addVideos.
  ///
  /// In ru, this message translates to:
  /// **'Добавьте видео'**
  String get addVideos;

  /// No description provided for @oneVideoOnly.
  ///
  /// In ru, this message translates to:
  /// **'Количество - только одно'**
  String get oneVideoOnly;

  /// No description provided for @addVideo.
  ///
  /// In ru, this message translates to:
  /// **'Добавить видео'**
  String get addVideo;

  /// No description provided for @squareMeters.
  ///
  /// In ru, this message translates to:
  /// **'м²'**
  String get squareMeters;

  /// No description provided for @createPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Создать фото'**
  String get createPhoto;

  /// No description provided for @chooseFromGallery.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать из галереи'**
  String get chooseFromGallery;

  /// No description provided for @recordVideo.
  ///
  /// In ru, this message translates to:
  /// **'Записать видео'**
  String get recordVideo;

  /// No description provided for @adTitle.
  ///
  /// In ru, this message translates to:
  /// **'Заголовок объявления'**
  String get adTitle;

  /// No description provided for @adTitleHint.
  ///
  /// In ru, this message translates to:
  /// **'Просторная квартира возле метро'**
  String get adTitleHint;

  /// No description provided for @adDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get adDescription;

  /// No description provided for @adDescriptionHint.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите, в каком состоянии квартира, для кого сдаёте и какие условия заселения.'**
  String get adDescriptionHint;

  /// No description provided for @minimumCharactersRequired.
  ///
  /// In ru, this message translates to:
  /// **'Необходимо ввести минимум 50 символов'**
  String get minimumCharactersRequired;

  /// No description provided for @phone.
  ///
  /// In ru, this message translates to:
  /// **'Телефон'**
  String get phone;

  /// No description provided for @additionalPhone.
  ///
  /// In ru, this message translates to:
  /// **'Дополнительный телефон'**
  String get additionalPhone;

  /// No description provided for @phonePlaceholder2.
  ///
  /// In ru, this message translates to:
  /// **'+7 (___) ___-__-__'**
  String get phonePlaceholder2;

  /// No description provided for @apartmentVerified.
  ///
  /// In ru, this message translates to:
  /// **'Верифицирован'**
  String get apartmentVerified;

  /// No description provided for @apartmentNotVerified.
  ///
  /// In ru, this message translates to:
  /// **'Не верифицирован'**
  String get apartmentNotVerified;

  /// No description provided for @apartmentCompanyAllowed.
  ///
  /// In ru, this message translates to:
  /// **'Можно с компанией'**
  String get apartmentCompanyAllowed;

  /// No description provided for @apartmentCompanyNotAllowed.
  ///
  /// In ru, this message translates to:
  /// **'Нельзя c компанией'**
  String get apartmentCompanyNotAllowed;

  /// No description provided for @apartmentRoomsShort.
  ///
  /// In ru, this message translates to:
  /// **'комн.'**
  String get apartmentRoomsShort;

  /// No description provided for @aboutHouse.
  ///
  /// In ru, this message translates to:
  /// **'О доме'**
  String get aboutHouse;

  /// No description provided for @renovationLabel.
  ///
  /// In ru, this message translates to:
  /// **'Ремонт'**
  String get renovationLabel;

  /// No description provided for @elevator.
  ///
  /// In ru, this message translates to:
  /// **'Лифт'**
  String get elevator;

  /// No description provided for @balconies.
  ///
  /// In ru, this message translates to:
  /// **'Балконы'**
  String get balconies;

  /// No description provided for @furniture.
  ///
  /// In ru, this message translates to:
  /// **'Мебель'**
  String get furniture;

  /// No description provided for @stove.
  ///
  /// In ru, this message translates to:
  /// **'Плита'**
  String get stove;

  /// No description provided for @notSpecified.
  ///
  /// In ru, this message translates to:
  /// **'Не указано'**
  String get notSpecified;

  /// No description provided for @bathroomRoom.
  ///
  /// In ru, this message translates to:
  /// **'Ванная комната'**
  String get bathroomRoom;

  /// No description provided for @householdAppliances.
  ///
  /// In ru, this message translates to:
  /// **'Бытовая техника'**
  String get householdAppliances;

  /// No description provided for @rentalConditionsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Условия аренды'**
  String get rentalConditionsTitle;

  /// No description provided for @contactTitle.
  ///
  /// In ru, this message translates to:
  /// **'Контакт'**
  String get contactTitle;

  /// No description provided for @viewsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count} просмотров'**
  String viewsCount(Object count);

  /// No description provided for @amenities.
  ///
  /// In ru, this message translates to:
  /// **'Удобства'**
  String get amenities;

  /// No description provided for @prepayment.
  ///
  /// In ru, this message translates to:
  /// **'Предоплата'**
  String get prepayment;

  /// No description provided for @rentalPeriod.
  ///
  /// In ru, this message translates to:
  /// **'Срок аренды'**
  String get rentalPeriod;

  /// No description provided for @whoToRent.
  ///
  /// In ru, this message translates to:
  /// **'Кому сдавать'**
  String get whoToRent;

  /// No description provided for @price.
  ///
  /// In ru, this message translates to:
  /// **'Цена'**
  String get price;
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
