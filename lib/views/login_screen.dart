import 'package:flutter/material.dart';
import './home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // image
              Image(image: AssetImage("assets/logo.png")),
              // email
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    label: Text("Enter Email"),
                  ),
                ),
              ),
              // password
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  if (email.text.endsWith("name") &&
                      password.text.endsWith("123")) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Screen(username: email.text)),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 71, 198, 143),
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                  ), 
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Login"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
