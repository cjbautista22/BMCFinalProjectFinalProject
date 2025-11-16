import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/screens/auth_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

// Define pink-related colors
const Color kPrimaryPink = Color(0xFFEC1C24); // Primary Pink
const Color kSecondaryPink = Color(0xFFFF69B4); // Hot Pink
const Color kLightPink = Color(0xFFFFB6C1); // Light Pink
const Color kOffWhite = Color(0xFFF8F4F0); // Background color

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'eCommerce App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: kPrimaryPink,
            brightness: Brightness.light,
            primary: kPrimaryPink, // Set primary color to pink
            onPrimary: Colors.white,
            secondary: kSecondaryPink, // Secondary color is a hot pink
            background: kOffWhite,
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: kOffWhite, // Background color of the app
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryPink, // Button color set to pink
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
            labelStyle: TextStyle(
              color: kPrimaryPink.withOpacity(0.8),
            ), // Pink label text
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: kPrimaryPink,
                width: 2.0,
              ), // Focused input border in pink
            ),
          ),
          cardTheme: CardThemeData(
            elevation: 1,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAlias,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: kPrimaryPink, // Set app bar icons and text to pink
            elevation: 0,
            centerTitle: true,
          ),
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}
