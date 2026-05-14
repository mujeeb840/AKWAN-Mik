import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const AkwanMikApp());
}

class AkwanMikApp extends StatelessWidget {
  const AkwanMikApp({super.key});

  @override
  Widget build(BuildContext context) {
    final base = ThemeData.dark(useMaterial3: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AKWAN Mik',
      theme: base.copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        colorScheme: base.colorScheme.copyWith(
          primary: const Color(0xFF2563EB),
          secondary: const Color(0xFF22C55E),
          surface: const Color(0xFF1E293B),
        ),
        textTheme: GoogleFonts.cairoTextTheme(base.textTheme),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0F172A),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1E293B),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
