import 'package:Frontend/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";
  final Color color = Colors.black;//const Color(0xFFB39DDB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 255, 255, 255),
            ],
            stops: [0.0, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon:
                       Icon(Icons.person, color: color),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return "fill the blank";
                    return null;
                  },
                  onSaved: (newValue) {
                    username = newValue!;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.lock, color: color),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return "fill the blank";
                    return null;
                  },
                  onSaved: (newValue) {
                    password = newValue!;
                  },
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () async {
                      // Sign in button logic
                      if (!_formKey.currentState!.validate()) return;
                      _formKey.currentState!.save();
                      var response = await context.read<AuthProvider>().signin(username: username, password: password);
                      print(response);
                      if (response['errors'] != null) {
                        for (var error in response['errors']) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error['message'])));
                      }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign in successfully")));
                        // GoRouter.of(context).go('/mainscreen');
                      }
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.go('/signup');
                      },
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(color: color, fontSize: 20),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     context.go('/signup');
                    //   },
                    //   child: const Text(
                    //     'Sign in',
                    //     style: TextStyle(
                    //       color: Color.fromARGB(255, 0, 102, 255),
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
