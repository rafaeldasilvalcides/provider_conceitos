import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_conceitos/repositories/user_repositories.dart';
import 'package:provider_conceitos/services/user_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => MultiProvider(providers: [
              Provider(
                create: ((context) => UserRepositories(name: 'Rafael')),
              ),
              Provider(
                  create: (context) => UserService(
                      repositorie: Provider.of(context, listen: false)))
            ])
      },
    );
  }
}
