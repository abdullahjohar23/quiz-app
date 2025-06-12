import 'package:flutter/material.dart';
import 'package:quiz_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz_app/pages/admin_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    
    await dotenv.load(fileName: 'secrets.env');
        // Loads the .env file
        // If your secret file is named secrets.env (not the default .env), then you must specify the filename explicitly when loading it
        // If you just write await dotenv.load(); without a filename, it tries to load the default .env file — so it won’t find your secrets.env automatically

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AdminLogin(),
        );
    }
}
