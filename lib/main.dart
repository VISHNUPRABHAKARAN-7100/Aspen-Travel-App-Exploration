import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splash_screen/view/splash_screen.dart';

void main() {
  // Ensures that Flutter initializes bindings before running the app.
  WidgetsFlutterBinding.ensureInitialized();

  // Locks the application to portrait orientation.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
