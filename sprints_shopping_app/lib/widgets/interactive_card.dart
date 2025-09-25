import 'package:flutter/material.dart';

class InteractiveCard extends StatefulWidget {
  final Widget child;
  const InteractiveCard({super.key, required this.child});

  @override
  State<InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<InteractiveCard> {
  double _elevation = 2;

  void _onHover(bool hovering) => setState(() => _elevation = hovering ? 12 : 2);
  void _onTapDown(_) => setState(() => _elevation = 8);
  void _onTapUp(_) => setState(() => _elevation = 2);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: () => setState(() => _elevation = 2),
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 200),
          elevation: _elevation,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: const Color(0XFFF0E0C1),
          borderRadius: BorderRadius.circular(12),
          child: widget.child,
        ),
      ),
    );
  }
}