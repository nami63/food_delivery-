import 'package:flutter/material.dart';
import 'package:test/Pages/homepage.dart';
import 'package:test/components/my_button.dart';
import 'package:test/components/my_text.dart'; // Assuming MyTextField is defined here

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    // Perform login functions

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Homepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          Text(
            "Food delivery",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Sign In",
            onTap:
                login, // Call the login function when Sign In button is tapped
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap, // Using onTap provided to LoginPage
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
