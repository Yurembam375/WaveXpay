import 'package:flutter/material.dart';

class NavbarVisibilityProvider extends ChangeNotifier {
  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void showNavbar() {
    if (!_isVisible) {
      _isVisible = true;
      notifyListeners();
    }
  }

  void hideNavbar() {
    if (_isVisible) {
      _isVisible = false;
      notifyListeners();
    }
  }
}
