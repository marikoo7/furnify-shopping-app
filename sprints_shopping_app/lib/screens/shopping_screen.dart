import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> products = [
    {"title": "Wooden Cabinet", "price": "\$799", "image": "assets/images/cabinet.jpeg"},
    {"title": "Chain Mail Lamp", "price": "\$129", "image": "assets/images/lamp.jpeg"},
    {"title": "Leather Sofa", "price": "\$1,499", "image": "assets/images/sofa.jpeg"},
    {"title": "Velvet Chair", "price": "\$249", "image": "assets/images/chair.jpeg"},
    {"title": "Coffee Table", "price": "\$179", "image": "assets/images/coffee_table.jpeg"},
    {"title": "Dining Table", "price": "\$1009", "image": "assets/images/dining_table.jpeg"},
  ];

  final List<Map<String, String>> offers = [
    {"title": "Living Room Bundle", "subtitle": "Get Sofa + Coffee Table + Lamp for only \$1,699 (Save \$100!)", "tag": "BUNDLE"},
    {"title": "Dining Essentials", "subtitle": "Dining Table + 4 Velvet Chairs — now just \$1,899", "tag": "HOT"},
    {"title": "Weekend Sale", "subtitle": "20% off all sofas and chairs this weekend only", "tag": "20% OFF"},
    {"title": "Cozy Corner Deal", "subtitle": "Velvet Chair + Lamp combo for only \$299", "tag": "DEAL"},
    {"title": "Free Shipping", "subtitle": "No delivery charges on all orders above \$500", "tag": "FREE"},
  ];

  // navigation in the pageview 
  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          loc.shopping_title,
          style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0XFFF0E0C1), fontSize: kIsWeb ? 36 : 30),
        ),
        centerTitle: true,
        toolbarHeight: kIsWeb ? 100 : kToolbarHeight,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF934C26), Color(0xFFBC8948)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;

          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        loc.shopping_featured,
                        style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w600, color: Color(0XFF3F4025)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: isWide ? 350 : 220,
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _pageController,
                            itemCount: 3,
                            onPageChanged: (index) => setState(() => _currentPage = index),
                            itemBuilder: (context, index) {
                              final product = products[index];
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 3))],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Stack(
                                    children: [
                                      Image.asset(product["image"]!, fit: BoxFit.cover, width: double.infinity),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [Color.fromARGB(225, 0, 0, 0), Colors.transparent],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              product["title"]!,
                                              style: const TextStyle(color: Color(0XFFF0E0C1), fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 8,
                            child: IconButton(
                              icon: const CircleAvatar(
                                backgroundColor: Color.fromARGB(170, 63, 64, 37),
                                child: Icon(Icons.arrow_back_ios_rounded, color: Color(0XFFF0E0C1)),
                              ),
                              onPressed: _previousPage,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            right: 8,
                            child: IconButton(
                              icon: const CircleAvatar(
                                backgroundColor: Color.fromARGB(170, 63, 64, 37),
                                child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0XFFF0E0C1)),
                              ),
                              onPressed: _nextPage,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          width: _currentPage == index ? 12 : 8,
                          height: _currentPage == index ? 12 : 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index ? const Color(0xFF934C26) : const Color(0xFFBC8948),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: Text(
                        loc.shopping_collection,
                        style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Color(0XFF3F4025)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: isWide ? 3 : 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: isWide ? 0.9 : 0.8,
                        ),
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return _InteractiveCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                    child: Image.asset(product["image"]!, fit: BoxFit.cover, width: double.infinity),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(product["title"]!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0XFF3F4025))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(product["price"]!, style: const TextStyle(fontSize: 16, color: Color(0xFF934C26))),
                                      IconButton(
                                        icon: const Icon(Icons.add_shopping_cart_rounded, color: Color.fromARGB(255, 111, 54, 23)),
                                        onPressed: () {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              dismissDirection: DismissDirection.down,
                                              backgroundColor: Colors.transparent,
                                              elevation: 0,
                                              behavior: SnackBarBehavior.floating,
                                              margin: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
                                              content: Container(
                                                padding: const EdgeInsets.all(12),
                                                decoration: BoxDecoration(
                                                  color: const Color(0XFF3F4025),
                                                  borderRadius: BorderRadius.circular(12),
                                                  boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 3))],
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(loc.shopping_itemAdded,
                                                        style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0XFFF0E0C1), fontSize: 15)),
                                                    Text(loc.shopping_itemAdded_detail(product["title"]!),
                                                        style: const TextStyle(color: Color(0xFFBC8948), fontSize: 13)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: Text(
                        loc.shopping_hotOffers,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0XFF3F4025)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: offers.length,
                        itemBuilder: (context, index) {
                          final offer = offers[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: _InteractiveCard(
                              child: ListTile(
                                title: Text(offer["title"]!, style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 111, 54, 23))),
                                subtitle: Text(offer["subtitle"]!, style: const TextStyle(color: Color(0xFF934C26))),
                                trailing: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [Color.fromARGB(255, 111, 54, 23), Color(0xFF934C26)]),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    offer["tag"]!,
                                    style: const TextStyle(fontSize: 12, color: Color(0XFFF0E0C1), fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// cards elevate when pressed on/hovered over
class _InteractiveCard extends StatefulWidget {
  final Widget child;
  const _InteractiveCard({required this.child});

  @override
  State<_InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<_InteractiveCard> {
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
