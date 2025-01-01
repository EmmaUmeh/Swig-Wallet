import 'package:flutter/material.dart';
import 'screens/walletScreen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
         textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
      ),
      home: const WalletScreen(),
    );
  }
}