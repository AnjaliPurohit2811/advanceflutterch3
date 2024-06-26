import 'package:advanceflutterch3/screens/appwebview/provider/google_provider.dart';
import 'package:advanceflutterch3/screens/appwebview/view/google_screen.dart';
import 'package:advanceflutterch3/screens/connectivity/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp( MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => GoogleProvider(),)],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleScreen(),
    );
  }
}
