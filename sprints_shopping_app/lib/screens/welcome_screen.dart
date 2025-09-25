import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sprints_shopping_app/screens/signin_dart.dart';
import 'package:sprints_shopping_app/screens/signup_screen.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

class WelcomesScreen extends StatefulWidget {
  const WelcomesScreen({super.key});

  @override
  State<WelcomesScreen> createState() => _WelcomesScreenState();
}

class _WelcomesScreenState extends State<WelcomesScreen> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        backgroundColor: const Color(0XFF3F4025),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              loc.appTitle,
              style: const TextStyle(
                fontFamily: "Suwannaphum-Regular",
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Color(0XFFF0E0C1),
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: "Suwannaphum-Regular",
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color.fromARGB(150, 187, 137, 71),
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  pause: const Duration(milliseconds: 1000),
                  animatedTexts: [
                    TyperAnimatedText(
                      loc.tagline,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0XFFF0E0C1),
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isWide = constraints.maxWidth > 600;
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1500),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // IMAGES
                        isWide
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HoverImage(
                                    child: Container(
                                      width: constraints.maxWidth / 3,
                                      height: constraints.maxWidth / 3 * 0.7,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/images/welcomePic.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  HoverImage(
                                    child: Container(
                                      width: constraints.maxWidth / 3,
                                      height: constraints.maxWidth / 3 * 0.7,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://64.media.tumblr.com/f6153b68cebd1fe4915082632acb30c6/73e8303748925088-ff/s1280x1920/23dcb4786df79f09e0f16de52e991b012dc00f9e.jpg',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Container(
                                    width: constraints.maxWidth * 0.9,
                                    height: constraints.maxWidth * 0.9 * 0.55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/welcomePic.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    width: constraints.maxWidth * 0.9,
                                    height: constraints.maxWidth * 0.9 * 0.55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          'https://64.media.tumblr.com/f6153b68cebd1fe4915082632acb30c6/73e8303748925088-ff/s1280x1920/23dcb4786df79f09e0f16de52e991b012dc00f9e.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(height: 30),
                        // BUTTONS
                        isWide
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildButton(
                                    label: loc.signUp,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SignupScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 20),
                                  _buildButton(
                                    label: loc.signIn,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SigninScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  _buildButton(
                                    label: loc.signUp,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SignupScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 15),
                                  _buildButton(
                                    label: loc.signIn,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SigninScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildButton({required String label, required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
              return const Color(0XFF924B26);
            }
            return const Color(0XFFBB8847);
          },
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, color: Color(0XFFF0E0C1)),
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  final Widget child;
  const HoverImage({super.key, required this.child});

  @override
  State<HoverImage> createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
