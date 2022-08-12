import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/api_provider/demodata_provider.dart';
import 'package:provider_demo/views/provider_demo.dart';

Future<void> main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DemoDataProvider>(
            create: (_) => DemoDataProvider()),
       
      ],
      child: MyApp(),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderDemoScreen(),
    );
  }
}
