import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/screens/shopping_screen.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final emailRegex = RegExp(r'^[^@]+@[A-Za-z]+\.[A-Za-z]+$');

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(
            AppLocalizations.of(context)!.signup_success_title,
            style: const TextStyle(
              color: Color(0xFF934C26),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            AppLocalizations.of(context)!.signup_success_message,
            style: const TextStyle(
              color: Color(0xFFBC8948),
              fontSize: 14,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ShoppingScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Text(AppLocalizations.of(context)!.signup_close),
            ),
          ],
        ),
      );
    }
  }

  // validation
  String? _validateFullName(String? value) {
    final loc = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) return loc.error_fullName_required;
    if (value[0] != value[0].toUpperCase()) return loc.error_fullName_uppercase;
    return null;
  }
  String? _validateEmail(String? value) {
    final loc = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) return loc.error_email_required;
    if (!emailRegex.hasMatch(value)) return loc.error_email_invalid;
    return null;
  }
  String? _validatePassword(String? value) {
    final loc = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) return loc.error_password_required;
    if (value.length < 6) return loc.error_password_short;
    return null;
  }
  String? _validateConfirmPassword(String? value) {
    final loc = AppLocalizations.of(context)!;
    if (value == null || value.isEmpty) return loc.error_confirm_required;
    if (value != _passwordController.text) return loc.error_passwords_mismatch;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF934C26), Color(0xFFBC8948)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 16,
              child: BackButton(
                color: const Color(0XFFF0E0C1),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Card(
                    color: const Color(0XFFF0E0C1),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              loc.signup_title,
                              style: const TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF934C26),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              loc.signup_subtitle,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Color(0xFFBC8948),
                              ),
                            ),
                            const SizedBox(height: 24),

                            // name
                            TextFormField(
                              controller: _fullNameController,
                              decoration: InputDecoration(
                                labelText: loc.signup_fullName,
                                hintText: loc.signup_fullName_hint,
                                border: const OutlineInputBorder(),
                              ),
                              validator: _validateFullName,
                            ),
                            const SizedBox(height: 16),

                            // email
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: loc.signup_email,
                                hintText: loc.signup_email_hint,
                                border: const OutlineInputBorder(),
                              ),
                              validator: _validateEmail,
                            ),
                            const SizedBox(height: 16),

                            // password
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: loc.signup_password,
                                hintText: loc.signup_password_hint,
                                border: const OutlineInputBorder(),
                              ),
                              validator: _validatePassword,
                            ),
                            const SizedBox(height: 16),

                            // check password
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: loc.signup_confirmPassword,
                                hintText: loc.signup_confirmPassword_hint,
                                border: const OutlineInputBorder(),
                              ),
                              validator: _validateConfirmPassword,
                            ),
                            const SizedBox(height: 24),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _submitForm,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF3F4025),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16),
                                ),
                                child: Text(
                                  loc.signup_button,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0XFFF0E0C1),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
