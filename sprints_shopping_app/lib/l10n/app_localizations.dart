import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'FurniFy'**
  String get appTitle;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'Style your space, simplify your life'**
  String get tagline;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signup_title.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signup_title;

  /// No description provided for @signup_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Join FurniFy today'**
  String get signup_subtitle;

  /// No description provided for @signup_fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get signup_fullName;

  /// No description provided for @signup_fullName_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get signup_fullName_hint;

  /// No description provided for @signup_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signup_email;

  /// No description provided for @signup_email_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get signup_email_hint;

  /// No description provided for @signup_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signup_password;

  /// No description provided for @signup_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get signup_password_hint;

  /// No description provided for @signup_confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get signup_confirmPassword;

  /// No description provided for @signup_confirmPassword_hint.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get signup_confirmPassword_hint;

  /// No description provided for @signup_button.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signup_button;

  /// No description provided for @signup_success_title.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get signup_success_title;

  /// No description provided for @signup_success_message.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully'**
  String get signup_success_message;

  /// No description provided for @signup_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get signup_close;

  /// No description provided for @error_fullName_required.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get error_fullName_required;

  /// No description provided for @error_fullName_uppercase.
  ///
  /// In en, this message translates to:
  /// **'First letter must be uppercase'**
  String get error_fullName_uppercase;

  /// No description provided for @error_email_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get error_email_required;

  /// No description provided for @error_email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get error_email_invalid;

  /// No description provided for @error_password_required.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get error_password_required;

  /// No description provided for @error_password_short.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get error_password_short;

  /// No description provided for @error_confirm_required.
  ///
  /// In en, this message translates to:
  /// **'Please confirm password'**
  String get error_confirm_required;

  /// No description provided for @error_passwords_mismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get error_passwords_mismatch;

  /// No description provided for @signin_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get signin_title;

  /// No description provided for @signin_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to FurniFy'**
  String get signin_subtitle;

  /// No description provided for @signin_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signin_email;

  /// No description provided for @signin_email_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get signin_email_hint;

  /// No description provided for @signin_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signin_password;

  /// No description provided for @signin_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get signin_password_hint;

  /// No description provided for @signin_button.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin_button;

  /// No description provided for @signin_success_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get signin_success_title;

  /// No description provided for @signin_success_message.
  ///
  /// In en, this message translates to:
  /// **'Account sign-in successful'**
  String get signin_success_message;

  /// No description provided for @signin_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get signin_close;

  /// No description provided for @error_email_required_signin.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get error_email_required_signin;

  /// No description provided for @error_email_invalid_signin.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get error_email_invalid_signin;

  /// No description provided for @error_password_required_signin.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get error_password_required_signin;

  /// No description provided for @error_password_short_signin.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get error_password_short_signin;

  /// No description provided for @shopping_title.
  ///
  /// In en, this message translates to:
  /// **'Our Products'**
  String get shopping_title;

  /// No description provided for @shopping_featured.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get shopping_featured;

  /// No description provided for @shopping_collection.
  ///
  /// In en, this message translates to:
  /// **'Shop Our Collection'**
  String get shopping_collection;

  /// No description provided for @shopping_hotOffers.
  ///
  /// In en, this message translates to:
  /// **'🔥Hot Offers🔥'**
  String get shopping_hotOffers;

  /// No description provided for @shopping_itemAdded.
  ///
  /// In en, this message translates to:
  /// **'Item added to cart'**
  String get shopping_itemAdded;

  /// No description provided for @shopping_itemAdded_detail.
  ///
  /// In en, this message translates to:
  /// **'{item} has been added to your cart'**
  String shopping_itemAdded_detail(Object item);
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
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
