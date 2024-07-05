import 'package:aspen_travel_app_exploration/home_screen/view/widgets/home_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Semantics(
      container: false,
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: SafeArea(
          child: Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: const [
                HomeScreenHeader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
