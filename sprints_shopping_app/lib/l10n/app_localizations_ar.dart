// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'FurniFy';

  @override
  String get tagline => 'نسّق مساحتك، وبسّط حياتك';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signup_title => 'إنشاء حساب';

  @override
  String get signup_subtitle => 'انضم إلى FurniFy اليوم';

  @override
  String get signup_fullName => 'الاسم الكامل';

  @override
  String get signup_fullName_hint => 'أدخل اسمك الكامل';

  @override
  String get signup_email => 'البريد الإلكتروني';

  @override
  String get signup_email_hint => 'أدخل بريدك الإلكتروني';

  @override
  String get signup_password => 'كلمة المرور';

  @override
  String get signup_password_hint => 'أدخل كلمة المرور';

  @override
  String get signup_confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get signup_confirmPassword_hint => 'أعد إدخال كلمة المرور';

  @override
  String get signup_button => 'إنشاء حساب';

  @override
  String get signup_success_title => 'تم بنجاح!';

  @override
  String get signup_success_message => 'تم إنشاء الحساب بنجاح';

  @override
  String get signup_close => 'إغلاق';

  @override
  String get error_fullName_required => 'الاسم الكامل مطلوب';

  @override
  String get error_fullName_uppercase => 'يجب أن يبدأ الاسم بحرف كبير';

  @override
  String get error_email_required => 'البريد الإلكتروني مطلوب';

  @override
  String get error_email_invalid => 'أدخل بريد إلكتروني صالح';

  @override
  String get error_password_required => 'كلمة المرور مطلوبة';

  @override
  String get error_password_short =>
      'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل';

  @override
  String get error_confirm_required => 'تأكيد كلمة المرور مطلوب';

  @override
  String get error_passwords_mismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get signin_title => 'مرحبًا بعودتك';

  @override
  String get signin_subtitle => 'سجّل الدخول إلى FurniFy';

  @override
  String get signin_email => 'البريد الإلكتروني';

  @override
  String get signin_email_hint => 'أدخل بريدك الإلكتروني';

  @override
  String get signin_password => 'كلمة المرور';

  @override
  String get signin_password_hint => 'أدخل كلمة المرور';

  @override
  String get signin_button => 'تسجيل الدخول';

  @override
  String get signin_success_title => 'مرحبًا!';

  @override
  String get signin_success_message => 'تم تسجيل الدخول بنجاح';

  @override
  String get signin_close => 'إغلاق';

  @override
  String get error_email_required_signin => 'البريد الإلكتروني مطلوب';

  @override
  String get error_email_invalid_signin => 'أدخل بريدًا إلكترونيًا صالحًا';

  @override
  String get error_password_required_signin => 'كلمة المرور مطلوبة';

  @override
  String get error_password_short_signin =>
      'يجب أن تكون كلمة المرور 6 أحرف على الأقل';

  @override
  String get shopping_title => 'منتجاتنا';

  @override
  String get shopping_featured => 'منتجات مميزة';

  @override
  String get shopping_collection => 'تسوق مجموعتنا';

  @override
  String get shopping_hotOffers => '🔥عروض ساخنة🔥';

  @override
  String get shopping_itemAdded => 'تمت إضافة العنصر إلى السلة';

  @override
  String shopping_itemAdded_detail(Object item) {
    return '$item تمت إضافته إلى سلة مشترياتك';
  }
}
