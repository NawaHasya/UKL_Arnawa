import 'package:flutter/material.dart';
import 'package:slicing_cinepolis/views/cinema_view.dart';
import 'package:slicing_cinepolis/views/booking_view.dart';
import 'package:slicing_cinepolis/views/home_view.dart';
import 'package:slicing_cinepolis/views/login_view.dart';
import 'package:slicing_cinepolis/views/movie_view.dart';
import 'package:slicing_cinepolis/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/s',
        routes: {
          '/s': (_) => SplashView(),
          '/l': (_) => LoginView(),
          '/h': (_) => HomeView(),
          '/b': (_) => CinemaView(),
          '/t': (_) => MovieView(),
          '/a': (_) => BookingView(),
        });
  }
}