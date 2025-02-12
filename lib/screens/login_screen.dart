import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'signup_screen.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_outline, size: 80, color: Colors.blueAccent),
              SizedBox(height: 20),

              CustomTextField(
                controller: emailController,
                labelText: "Email",
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 16),

              CustomTextField(
                controller: passwordController,
                labelText: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text("Forgot Password?", style: TextStyle(color: Colors.blueAccent)),
              ),

              // Sign-Up Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text("Sign Up", style: TextStyle(color: Colors.blueAccent)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
