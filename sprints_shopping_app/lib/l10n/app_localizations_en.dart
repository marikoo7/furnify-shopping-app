// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'FurniFy';

  @override
  String get tagline => 'Style your space, simplify your life';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get signup_title => 'Create Account';

  @override
  String get signup_subtitle => 'Join FurniFy today';

  @override
  String get signup_fullName => 'Full Name';

  @override
  String get signup_fullName_hint => 'Enter your full name';

  @override
  String get signup_email => 'Email';

  @override
  String get signup_email_hint => 'Enter your email';

  @override
  String get signup_password => 'Password';

  @override
  String get signup_password_hint => 'Enter your password';

  @override
  String get signup_confirmPassword => 'Confirm Password';

  @override
  String get signup_confirmPassword_hint => 'Confirm your password';

  @override
  String get signup_button => 'Create Account';

  @override
  String get signup_success_title => 'Success!';

  @override
  String get signup_success_message => 'Account created successfully';

  @override
  String get signup_close => 'Close';

  @override
  String get error_fullName_required => 'Full name is required';

  @override
  String get error_fullName_uppercase => 'First letter must be uppercase';

  @override
  String get error_email_required => 'Email is required';

  @override
  String get error_email_invalid => 'Enter a valid email address';

  @override
  String get error_password_required => 'Password is required';

  @override
  String get error_password_short => 'Password must be at least 6 characters';

  @override
  String get error_confirm_required => 'Please confirm password';

  @override
  String get error_passwords_mismatch => 'Passwords do not match';

  @override
  String get signin_title => 'Welcome Back';

  @override
  String get signin_subtitle => 'Sign in to FurniFy';

  @override
  String get signin_email => 'Email';

  @override
  String get signin_email_hint => 'Enter your email';

  @override
  String get signin_password => 'Password';

  @override
  String get signin_password_hint => 'Enter your password';

  @override
  String get signin_button => 'Sign In';

  @override
  String get signin_success_title => 'Welcome!';

  @override
  String get signin_success_message => 'Account sign-in successful';

  @override
  String get signin_close => 'Close';

  @override
  String get error_email_required_signin => 'Email is required';

  @override
  String get error_email_invalid_signin => 'Enter a valid email address';

  @override
  String get error_password_required_signin => 'Password is required';

  @override
  String get error_password_short_signin =>
      'Password must be at least 6 characters';

  @override
  String get shopping_title => 'Our Products';

  @override
  String get shopping_featured => 'Featured Products';

  @override
  String get shopping_collection => 'Shop Our Collection';

  @override
  String get shopping_hotOffers => '🔥Hot Offers🔥';

  @override
  String get shopping_itemAdded => 'Item added to cart';

  @override
  String shopping_itemAdded_detail(Object item) {
    return '$item has been added to your cart';
  }
}
