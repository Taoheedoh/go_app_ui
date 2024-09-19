import 'package:flutter/material.dart';
import 'package:go_app/login_reg_page.dart';

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
              margin: const EdgeInsets.only(),
              padding: const EdgeInsets.all(10),
              alignment: FractionalOffset.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginReg(),
                    ),
                  );
                },
                icon: const Icon(Icons.clear),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 9, 175, 134),
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 9, 175, 134),
                  borderRadius: BorderRadius.all(
                    Radius.circular(300),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 9, 175, 134),
                      ),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Color.fromARGB(255, 9, 175, 134),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 9, 175, 134), width: 2),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 9, 175, 134),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 9, 175, 134),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 9, 175, 134), width: 2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),

                SizedBox(
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      side: const BorderSide(color: Colors.white, width: 2),
                      backgroundColor: const Color.fromARGB(255, 9, 175, 134),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
