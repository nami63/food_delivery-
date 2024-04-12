import 'package:flutter/material.dart';
import 'package:test/components/my_button.dart';
import 'package:test/components/my_text.dart'; // Assuming MyTextField is defined here

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_add,
            size: 100,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          Text(
            "Create an Account",
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
          MyTextField(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Register",
            onTap: () {
              // Handle registration logic here
            },
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap, // Using onTap provided to RegisterPage
                child: Text(
                  "Sign In",
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
