import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  final TextEditingController phoneController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // Email
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return "Enter a valid email";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return "Password must be 8+ characters";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Phone
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!.validate()) {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Registration Successful"),
                      ),
                    );
                  }
                },
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}