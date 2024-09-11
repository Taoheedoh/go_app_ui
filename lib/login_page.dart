import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 175, 134),
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              // width: 10,
              // height: ,
              // decoration: const BoxDecoration(
              //   color: Color.fromARGB(255, 9, 175, 134),
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(100),
              //   ),
              // ),
              alignment: FractionalOffset.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 9, 175, 134),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
