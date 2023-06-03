import 'package:flutter/material.dart';
import 'package:kraftbase/screens/login-signup/login_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF171D22),
        appBar: AppBar(
          title: const Text(
            "Kraftbase Assignment",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF171D22),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: const Text(
                  "Login Screen",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                splashColor: Colors.transparent,
              ),
              ListTile(
                title: const Text(
                  "Home Screen",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
                onTap: () {},
                splashColor: Colors.transparent,
              ),
              ListTile(
                title: const Text(
                  "Event Screen",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
                onTap: () {},
                splashColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
