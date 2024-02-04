import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/features/app/spalsh_screen/splash_screen.dart';
import 'package:food_delivery_flutter/features/user_auth/presentation/pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBApNcex1b5ZJ2RtG1PpPheMjqDE5qnz-k",
          appId: "1:718950671830:web:c23add48b94514dbcf7077",
          messagingSenderId: "718950671830",
          projectId: "flutter-ecommerce-c9b79"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              child: LoginPage(),
            ),
        // '/login': (context) => LoginPage(),
        // '/signUp': (context) => SignUpPage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
