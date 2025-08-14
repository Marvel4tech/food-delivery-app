import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /* 

    // fill out the authentication here..

    */

    // navigate to homepage
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder:(context) => const HomePage(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message, app slogan
            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email testified
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password testified
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // sign in button
            MyButton(
              onTap: login, 
              text: 'Sign In'
            ),

            const SizedBox(height: 10),

            // not a member, register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(width: 4),

                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
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
