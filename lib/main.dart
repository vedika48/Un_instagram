import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mlsc_uninstagram_project/firebase_options.dart';
import 'package:mlsc_uninstagram_project/screen/login_screen.dart';
import 'package:mlsc_uninstagram_project/screen/profile_screen.dart';
import 'package:mlsc_uninstagram_project/screen/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const MyLoginPage(),
        '/signup': (context) => const SignupPage(),
        '/profile': (context) => const ProfileScreen(
              uid: '',
            ),
      },
    );
  }
}
