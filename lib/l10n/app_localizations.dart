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

  /// No description provided for @profileDetailsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Ваши данные'**
  String get profileDetailsTitle;

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

  /// No description provided for @rentApartment.
  ///
  /// In ru, this message translates to:
  /// **'Снять в аренду'**
  String get rentApartment;

  /// No description provided for @myAdvertisements.
  ///
  /// In ru, this message translates to:
  /// **'Мои объявления'**
  String get myAdvertisements;

  /// No description provided for @findNeighbour.
  ///
  /// In ru, this message translates to:
  /// **'Найти соседа'**
  String get findNeighbour;

  /// No description provided for @recentAdvertisements.
  ///
  /// In ru, this message translates to:
  /// **'Недавние объявления'**
  String get recentAdvertisements;

  /// No description provided for @seeAll.
  ///
  /// In ru, this message translates to:
  /// **'Смотреть все'**
  String get seeAll;

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
  /// **'Я арендатор'**
  String get quizQ1Opt1;

  /// No description provided for @quizQ1Opt2.
  ///
  /// In ru, this message translates to:
  /// **'Я собственник'**
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

  /// No description provided for @traitEmployment.
  ///
  /// In ru, this message translates to:
  /// **'Занятость'**
  String get traitEmployment;

  /// No description provided for @traitNoiseLevel.
  ///
  /// In ru, this message translates to:
  /// **'Уровень шума'**
  String get traitNoiseLevel;

  /// No description provided for @traitCleaning.
  ///
  /// In ru, this message translates to:
  /// **'Уборка'**
  String get traitCleaning;

  /// No description provided for @traitPets.
  ///
  /// In ru, this message translates to:
  /// **'Питомцы'**
  String get traitPets;

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

  /// No description provided for @preferencesLifestyleTitle.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите о себе'**
  String get preferencesLifestyleTitle;

  /// No description provided for @preferencesHouseholdTitle.
  ///
  /// In ru, this message translates to:
  /// **'Бытовые привычки'**
  String get preferencesHouseholdTitle;

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

  /// No description provided for @selectAtLeastOneOption.
  ///
  /// In ru, this message translates to:
  /// **'Выберите хотя бы один вариант'**
  String get selectAtLeastOneOption;

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

  /// No description provided for @success.
  ///
  /// In ru, this message translates to:
  /// **'Успешно'**
  String get success;

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

  /// No description provided for @yourGender.
  ///
  /// In ru, this message translates to:
  /// **'Ваш пол'**
  String get yourGender;

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

  /// No description provided for @whatIsYourAddress.
  ///
  /// In ru, this message translates to:
  /// **'Какой у вас адрес?'**
  String get whatIsYourAddress;

  /// No description provided for @apartment.
  ///
  /// In ru, this message translates to:
  /// **'Квартира'**
  String get apartment;

  /// No description provided for @room.
  ///
  /// In ru, this message translates to:
  /// **'Комната'**
  String get room;

  /// No description provided for @house.
  ///
  /// In ru, this message translates to:
  /// **'Дом'**
  String get house;

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

  /// No description provided for @inFavorites.
  ///
  /// In ru, this message translates to:
  /// **'В избранном'**
  String get inFavorites;

  /// No description provided for @validationSelectOption.
  ///
  /// In ru, this message translates to:
  /// **'Выберите значение'**
  String get validationSelectOption;

  /// No description provided for @validationSelectAtLeastOne.
  ///
  /// In ru, this message translates to:
  /// **'Выберите хотя бы один вариант'**
  String get validationSelectAtLeastOne;

  /// No description provided for @validationPickStreet.
  ///
  /// In ru, this message translates to:
  /// **'Выберите адрес'**
  String get validationPickStreet;

  /// No description provided for @validationContactMethod.
  ///
  /// In ru, this message translates to:
  /// **'Выберите способ связи'**
  String get validationContactMethod;

  /// No description provided for @validationAdditionalPhone.
  ///
  /// In ru, this message translates to:
  /// **'Укажите дополнительный телефон'**
  String get validationAdditionalPhone;

  /// No description provided for @searchNoResults.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get searchNoResults;

  /// No description provided for @createAdRentGoalTitle.
  ///
  /// In ru, this message translates to:
  /// **'Цель аренды'**
  String get createAdRentGoalTitle;

  /// No description provided for @createAdWhoCanRentTitle.
  ///
  /// In ru, this message translates to:
  /// **'Кто может снимать'**
  String get createAdWhoCanRentTitle;

  /// No description provided for @createAdHousingTypeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Тип жилья'**
  String get createAdHousingTypeTitle;

  /// No description provided for @createAdCurrencyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Валюта'**
  String get createAdCurrencyTitle;

  /// No description provided for @createAdConfirmationPhoneTitle.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get createAdConfirmationPhoneTitle;

  /// No description provided for @createAdConfirmationPriceTitle.
  ///
  /// In ru, this message translates to:
  /// **'Цена аренды'**
  String get createAdConfirmationPriceTitle;

  /// No description provided for @createAdCityOmsk.
  ///
  /// In ru, this message translates to:
  /// **'Омск'**
  String get createAdCityOmsk;

  /// No description provided for @createGroupTitle.
  ///
  /// In ru, this message translates to:
  /// **'Создать группу'**
  String get createGroupTitle;

  /// No description provided for @createGroupLivingConditions.
  ///
  /// In ru, this message translates to:
  /// **'Условия проживания'**
  String get createGroupLivingConditions;

  /// No description provided for @createGroupApartmentPhotos.
  ///
  /// In ru, this message translates to:
  /// **'Фото квартиры'**
  String get createGroupApartmentPhotos;

  /// No description provided for @createGroupFinancialConditions.
  ///
  /// In ru, this message translates to:
  /// **'Финансовые условия'**
  String get createGroupFinancialConditions;

  /// No description provided for @createGroupRoommateGender.
  ///
  /// In ru, this message translates to:
  /// **'Пол соседа'**
  String get createGroupRoommateGender;

  /// No description provided for @createGroupParticipantsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Кол-во человек'**
  String get createGroupParticipantsTitle;

  /// No description provided for @createGroupIncludingYou.
  ///
  /// In ru, this message translates to:
  /// **'Включая вас'**
  String get createGroupIncludingYou;

  /// No description provided for @createGroupLivingRulesTitle.
  ///
  /// In ru, this message translates to:
  /// **'Правила проживания'**
  String get createGroupLivingRulesTitle;

  /// No description provided for @createGroupLivingRulesHint.
  ///
  /// In ru, this message translates to:
  /// **'Укажите, что допустимо для проживания'**
  String get createGroupLivingRulesHint;

  /// No description provided for @createGroupPartnerAllowed.
  ///
  /// In ru, this message translates to:
  /// **'Можно с партнёром'**
  String get createGroupPartnerAllowed;

  /// No description provided for @createGroupSmokingAllowed.
  ///
  /// In ru, this message translates to:
  /// **'Разрешено курение в квартире'**
  String get createGroupSmokingAllowed;

  /// No description provided for @createGroupLookingForTitle.
  ///
  /// In ru, this message translates to:
  /// **'Кого ищете?'**
  String get createGroupLookingForTitle;

  /// No description provided for @createGroupLookingForHint.
  ///
  /// In ru, this message translates to:
  /// **'Укажите привычки идеального соседа - подберём тех, кто совпадает'**
  String get createGroupLookingForHint;

  /// No description provided for @createGroupAtmosphereTitle.
  ///
  /// In ru, this message translates to:
  /// **'Атмосфера в квартире'**
  String get createGroupAtmosphereTitle;

  /// No description provided for @createGroupAtmosphereHint.
  ///
  /// In ru, this message translates to:
  /// **'Опишите, как будет жить ваша группа - кандидаты увидят, подходит ли им такая обстановка'**
  String get createGroupAtmosphereHint;

  /// No description provided for @createGroupSelectAddress.
  ///
  /// In ru, this message translates to:
  /// **'Выберите адрес'**
  String get createGroupSelectAddress;

  /// No description provided for @createGroupMinPhotosCount.
  ///
  /// In ru, this message translates to:
  /// **'Количество - минимум 1'**
  String get createGroupMinPhotosCount;

  /// No description provided for @createGroupPricePerPersonTitle.
  ///
  /// In ru, this message translates to:
  /// **'На одного за месяц'**
  String get createGroupPricePerPersonTitle;

  /// No description provided for @createGroupPricePerPersonHint.
  ///
  /// In ru, this message translates to:
  /// **'Например: 4 000'**
  String get createGroupPricePerPersonHint;

  /// No description provided for @createGroupAdTitleHint.
  ///
  /// In ru, this message translates to:
  /// **'Например, тихий уголок в центре'**
  String get createGroupAdTitleHint;

  /// No description provided for @createGroupUtilitiesTitle.
  ///
  /// In ru, this message translates to:
  /// **'Коммунальные услуги'**
  String get createGroupUtilitiesTitle;

  /// No description provided for @createGroupGroupSizeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Кол-во в группе'**
  String get createGroupGroupSizeTitle;

  /// No description provided for @createGroupRentPricePerPersonTitle.
  ///
  /// In ru, this message translates to:
  /// **'Цена аренды на одного'**
  String get createGroupRentPricePerPersonTitle;

  /// No description provided for @createGroupPublishAd.
  ///
  /// In ru, this message translates to:
  /// **'Разместить объявление'**
  String get createGroupPublishAd;

  /// No description provided for @createGroupPublishing.
  ///
  /// In ru, this message translates to:
  /// **'Размещение...'**
  String get createGroupPublishing;

  /// No description provided for @createGroupSaveDraft.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить черновик'**
  String get createGroupSaveDraft;

  /// No description provided for @createGroupGreat.
  ///
  /// In ru, this message translates to:
  /// **'Отлично'**
  String get createGroupGreat;

  /// No description provided for @createGroupSubmitFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось создать группу'**
  String get createGroupSubmitFailed;

  /// No description provided for @createGroupValidationSelectRoommateGender.
  ///
  /// In ru, this message translates to:
  /// **'Выберите пол соседа'**
  String get createGroupValidationSelectRoommateGender;

  /// No description provided for @createGroupValidationEnterPeopleCount.
  ///
  /// In ru, this message translates to:
  /// **'Укажите количество людей'**
  String get createGroupValidationEnterPeopleCount;

  /// No description provided for @createGroupValidationSelectPropertyType.
  ///
  /// In ru, this message translates to:
  /// **'Выберите вид недвижимости'**
  String get createGroupValidationSelectPropertyType;

  /// No description provided for @createGroupValidationSelectRoomsCount.
  ///
  /// In ru, this message translates to:
  /// **'Выберите количество комнат'**
  String get createGroupValidationSelectRoomsCount;

  /// No description provided for @createGroupValidationEnterTotalFloors.
  ///
  /// In ru, this message translates to:
  /// **'Введите этажность дома'**
  String get createGroupValidationEnterTotalFloors;

  /// No description provided for @createGroupValidationAddPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Добавьте минимум одну фотографию'**
  String get createGroupValidationAddPhoto;

  /// No description provided for @createGroupValidationSelectFurniture.
  ///
  /// In ru, this message translates to:
  /// **'Укажите состояние мебели'**
  String get createGroupValidationSelectFurniture;

  /// No description provided for @createGroupValidationSelectCurrency.
  ///
  /// In ru, this message translates to:
  /// **'Выберите валюту'**
  String get createGroupValidationSelectCurrency;

  /// No description provided for @createGroupValidationSelectRentDuration.
  ///
  /// In ru, this message translates to:
  /// **'Выберите срок аренды'**
  String get createGroupValidationSelectRentDuration;

  /// No description provided for @createGroupValidationSelectUtilitiesPayment.
  ///
  /// In ru, this message translates to:
  /// **'Выберите вариант оплаты коммунальных услуг'**
  String get createGroupValidationSelectUtilitiesPayment;

  /// No description provided for @createGroupParticipantsSummary.
  ///
  /// In ru, this message translates to:
  /// **'{count} человек'**
  String createGroupParticipantsSummary(Object count);

  /// No description provided for @notSelectedNeutral.
  ///
  /// In ru, this message translates to:
  /// **'Не выбрано'**
  String get notSelectedNeutral;

  /// No description provided for @filtersCityMoscowTitle.
  ///
  /// In ru, this message translates to:
  /// **'г. Москва'**
  String get filtersCityMoscowTitle;

  /// No description provided for @filtersLocationSearchHint.
  ///
  /// In ru, this message translates to:
  /// **'Метро, район, адрес, шоссе, ЖК'**
  String get filtersLocationSearchHint;

  /// No description provided for @validationEnterArea.
  ///
  /// In ru, this message translates to:
  /// **'Укажите площадь'**
  String get validationEnterArea;

  /// No description provided for @validationEnterFloor.
  ///
  /// In ru, this message translates to:
  /// **'Укажите этаж'**
  String get validationEnterFloor;

  /// No description provided for @validationEnterTitle.
  ///
  /// In ru, this message translates to:
  /// **'Укажите заголовок'**
  String get validationEnterTitle;

  /// No description provided for @validationEnterApartmentNumber.
  ///
  /// In ru, this message translates to:
  /// **'Укажите номер квартиры'**
  String get validationEnterApartmentNumber;

  /// No description provided for @validationEnterDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание не короче 10 символов'**
  String get validationEnterDescription;

  /// No description provided for @validationEnterPrice.
  ///
  /// In ru, this message translates to:
  /// **'Укажите цену'**
  String get validationEnterPrice;

  /// No description provided for @validationEnterDeposit.
  ///
  /// In ru, this message translates to:
  /// **'Укажите залог'**
  String get validationEnterDeposit;

  /// No description provided for @validationFloorMustBeLessThenTotalFloors.
  ///
  /// In ru, this message translates to:
  /// **'Этаж должен быть меньше количества этажей в доме'**
  String get validationFloorMustBeLessThenTotalFloors;

  /// No description provided for @errorGeneric.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка загрузки'**
  String get errorGeneric;

  /// No description provided for @yourGoal.
  ///
  /// In ru, this message translates to:
  /// **'Ваша цель'**
  String get yourGoal;

  /// No description provided for @priceFromHint.
  ///
  /// In ru, this message translates to:
  /// **'От'**
  String get priceFromHint;

  /// No description provided for @priceToHint.
  ///
  /// In ru, this message translates to:
  /// **'До'**
  String get priceToHint;

  /// No description provided for @childrenAllowedFilter.
  ///
  /// In ru, this message translates to:
  /// **'Можно с детьми'**
  String get childrenAllowedFilter;

  /// No description provided for @petsAllowedFilter.
  ///
  /// In ru, this message translates to:
  /// **'Разрешены животные'**
  String get petsAllowedFilter;

  /// No description provided for @sortByPopularity.
  ///
  /// In ru, this message translates to:
  /// **'По популярности'**
  String get sortByPopularity;

  /// No description provided for @sortByPriceAsc.
  ///
  /// In ru, this message translates to:
  /// **'По цене (сначала дешевле)'**
  String get sortByPriceAsc;

  /// No description provided for @sortByPriceDesc.
  ///
  /// In ru, this message translates to:
  /// **'По цене (сначала дороже)'**
  String get sortByPriceDesc;

  /// No description provided for @sortByDateDesc.
  ///
  /// In ru, this message translates to:
  /// **'По дате добавления (сначала новые)'**
  String get sortByDateDesc;

  /// No description provided for @sortByDateAsc.
  ///
  /// In ru, this message translates to:
  /// **'По дате добавления (сначала старые)'**
  String get sortByDateAsc;

  /// No description provided for @tenantApplications.
  ///
  /// In ru, this message translates to:
  /// **'Заявки от арендаторов'**
  String get tenantApplications;

  /// No description provided for @analytics.
  ///
  /// In ru, this message translates to:
  /// **'Аналитика'**
  String get analytics;

  /// No description provided for @myTransactions.
  ///
  /// In ru, this message translates to:
  /// **'Мои сделки'**
  String get myTransactions;

  /// No description provided for @myAccount.
  ///
  /// In ru, this message translates to:
  /// **'Мой аккаунт'**
  String get myAccount;

  /// No description provided for @deleteAccount.
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт'**
  String get deleteAccount;

  /// No description provided for @paymentMethods.
  ///
  /// In ru, this message translates to:
  /// **'Способы оплаты'**
  String get paymentMethods;

  /// No description provided for @myProfile.
  ///
  /// In ru, this message translates to:
  /// **'Моя анкета'**
  String get myProfile;

  /// No description provided for @loginByOwner.
  ///
  /// In ru, this message translates to:
  /// **'Войти как\nсобственник'**
  String get loginByOwner;

  /// No description provided for @loginByTenant.
  ///
  /// In ru, this message translates to:
  /// **'Войти как\nарендатор'**
  String get loginByTenant;

  /// No description provided for @ownerWallet.
  ///
  /// In ru, this message translates to:
  /// **'Мой кошелек'**
  String get ownerWallet;

  /// No description provided for @saving.
  ///
  /// In ru, this message translates to:
  /// **'Сохраняем...'**
  String get saving;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите выйти из аккаунта?'**
  String get logoutConfirmMessage;

  /// No description provided for @logoutFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось выйти из аккаунта'**
  String get logoutFailed;

  /// No description provided for @preferencesSaveFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось сохранить предпочтения'**
  String get preferencesSaveFailed;

  /// No description provided for @sessionExpiredReLogin.
  ///
  /// In ru, this message translates to:
  /// **'Сессия истекла. Войдите снова.'**
  String get sessionExpiredReLogin;

  /// No description provided for @profileLoadFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось загрузить профиль'**
  String get profileLoadFailed;

  /// No description provided for @profileEditSaveFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось сохранить данные'**
  String get profileEditSaveFailed;

  /// No description provided for @profileEditFirstNameRequired.
  ///
  /// In ru, this message translates to:
  /// **'Имя обязательно'**
  String get profileEditFirstNameRequired;

  /// No description provided for @profileEditLastNameRequired.
  ///
  /// In ru, this message translates to:
  /// **'Фамилия обязательна'**
  String get profileEditLastNameRequired;

  /// No description provided for @profileUpdateFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось обновить профиль'**
  String get profileUpdateFailed;

  /// No description provided for @createProfileAgeRequired.
  ///
  /// In ru, this message translates to:
  /// **'Заполните поле'**
  String get createProfileAgeRequired;

  /// No description provided for @createProfileAgeInvalid.
  ///
  /// In ru, this message translates to:
  /// **'Введите корректный возраст (18-100)'**
  String get createProfileAgeInvalid;

  /// No description provided for @createProfileGenderRequired.
  ///
  /// In ru, this message translates to:
  /// **'Пол обязателен'**
  String get createProfileGenderRequired;

  /// No description provided for @createAdSubmitFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось создать объявление'**
  String get createAdSubmitFailed;

  /// No description provided for @loginToUseAllFeatures.
  ///
  /// In ru, this message translates to:
  /// **'Войдите, чтобы пользоваться всеми возможностями приложения.'**
  String get loginToUseAllFeatures;

  /// No description provided for @notSelectedSingle.
  ///
  /// In ru, this message translates to:
  /// **'Не выбран'**
  String get notSelectedSingle;

  /// No description provided for @notSelectedPlural.
  ///
  /// In ru, this message translates to:
  /// **'Не выбраны'**
  String get notSelectedPlural;

  /// No description provided for @profileItemEditLater.
  ///
  /// In ru, this message translates to:
  /// **'Редактирование этого пункта будет добавлено позже'**
  String get profileItemEditLater;

  /// No description provided for @profileLoadErrorWithDetails.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка загрузки: {error}'**
  String profileLoadErrorWithDetails(Object error);
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
