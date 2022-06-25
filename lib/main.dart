import 'dart:async';
import 'package:dart_supabase_example/pages/sign_in_page.dart';
import 'package:dart_supabase_example/services/supabase_secrets_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final config = await SupabaseSecretsStore.loadFromAssetBundle(
    rootBundle.loadStructuredData<SupabaseSecretsStore>,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(title: 'Flutter Demo Home Page'),
    );
  }
}
