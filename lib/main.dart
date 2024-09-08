import 'package:flutter/material.dart';
import 'package:go_app/login_page.dart';
import 'package:go_app/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 9, 175, 134),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(300),
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 70),
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(300),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 175, 134),
                        fontSize: 105,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  margin: const EdgeInsets.only(right: 80),
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(300),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  margin: const EdgeInsets.only(right: 150),
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(300),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 175, 134),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: 2),
                    backgroundColor: const Color.fromARGB(255, 9, 175, 134),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                    );
                  },
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
