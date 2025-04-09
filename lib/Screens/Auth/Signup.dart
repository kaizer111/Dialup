import 'package:dialup/main.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Create an account✨',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              const Text(
                'Welcome! Please enter your details.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text("Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Enter Your Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text("Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail),
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text("Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                  ),
                  const Text(
                    "Must be at least 8 characters",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.pink, Colors.purple]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text("Log In",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                label: const Text("Log in with Google",
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                icon: const Icon(Icons.facebook, color: Colors.blue),
                label: const Text("Log in with Facebook",
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
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
