import 'package:aspen_travel_app_exploration/utils/custom_enums.dart';
import 'package:flutter/foundation.dart';

class HomeScreenProvider with ChangeNotifier {
  Categories categories = Categories.location;

  void updateCategories({required Categories status}) {
    categories = status;
    notifyListeners();
  }
}
