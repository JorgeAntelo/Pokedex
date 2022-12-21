import 'package:flutter/material.dart';

class MetadataStates with ChangeNotifier {
  int _currentPage = 1;
  int _totalPages = 1;
  int _totalItems = 0;
  int _itemsPerPage = 20;

  int get currentPage => _currentPage;
  int get totalPages => _totalPages;
  int get totalItems => _totalItems;
  int get itemsPerPage => _itemsPerPage;

  void setTotalItems(int totalItems) {
    _totalItems = totalItems;
    setTotalPages(totalItems, 20);
    notifyListeners();
  }

  void setTotalPages(int totalItems, int itemsPerPage) {
    _totalItems = totalItems;
    _itemsPerPage = itemsPerPage;
    _totalPages = (totalItems / itemsPerPage).ceil();
    notifyListeners();
  }

  void setCurrentPage(int currentPage) {
    _currentPage = currentPage;
    notifyListeners();
  }

  void nextPage() {
    if (_currentPage < _totalPages) {
      _currentPage++;
      notifyListeners();
    }
  }

  void previousPage() {
    if (_currentPage > 1) {
      _currentPage--;
      notifyListeners();
    }
  }
}
