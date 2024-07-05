import 'package:aspen_travel_app_exploration/home_screen/view/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/custom_enums.dart';
import '../../provider/home_screen_provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Consumer<HomeScreenProvider>(
        builder: (context, snapShot, child) {
          return Row(
            children: Categories.values.map((category) {
              return CategoryItem(
                category: category,
                isSelected: snapShot.categories == category,
                onTap: () => snapShot.updateCategories(status: category),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}