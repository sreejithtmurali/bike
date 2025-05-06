import 'package:bike/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/themeprovider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const ZappioApp(),
    ),
  );
}


class ZappioApp extends StatelessWidget {
  const ZappioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Zappio Ride Booking',
          theme: themeProvider.themeData,
          home: const SplashScreen(),
        );
      },
    );
  }
}




