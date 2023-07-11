import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider/screens/home_screen.dart';
import 'package:slider/screens/progress_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProgressValue()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(child: const HomePage()),
      ),
    );
  }
}
