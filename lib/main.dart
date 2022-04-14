import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/providers/ui_provider.dart';
import 'package:qr_reader_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final Color color = Colors.deepPurple;

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'map': (_) => const MapScreen(),
        },
        theme: ThemeData.light().copyWith(
          primaryColor: color,
          appBarTheme: AppBarTheme(color: color),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: color,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: color,
            unselectedItemColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
