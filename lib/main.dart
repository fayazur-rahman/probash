import 'package:flutter/material.dart';
import 'package:probash_airlines/base/bottom_nav_bar.dart';
import 'package:probash_airlines/screens/all_tickets.dart';

import 'base/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage : (context)=> const BottomNavBar(),
        AppRoutes.allTickets :(context)=>AllTickets()
      },
    );
  }
}


// git add .                      # Stages all the changes
// git commit -m "Your message"   # Commits the changes with a message
// git push origin main           # Pushes the changes to GitHub


