import 'package:flutter/material.dart';
import 'package:model_app/screens/put_user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ModelCallingScreen(),
      // home: const StockModelScreen(),
      // home: const ProductionCallingScreen(),
      // home: const ImagePickerScreen(),
      // home: const UserScreen(),
      // home: const PostUserScreen(),
      home: const PutUserScreen(),
    );
  }
}
