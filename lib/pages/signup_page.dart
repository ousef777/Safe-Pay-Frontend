// import 'package:flutter/material.dart';
// import 'package:Frontend/providers/auth_provider.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// class SignUpPage extends StatelessWidget {
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();

//   SignUpPage({super.key});
//   final _formKey = GlobalKey<FormState>();
//   String username = "";
//   String password = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Sign Up',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 112, 173, 99),
//               Color.fromARGB(255, 255, 255, 255),
//             ],
//             stops: [0.0, 1.0],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Form(
//           key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.person_add_alt_1,
//                   size: 100,
//                   color: Colors.white,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Join Us',
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                 ),
//                 const SizedBox(height: 40),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.9),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon:
//                         const Icon(Icons.person, color: Color(0xFFB39DDB)),
//                   ),
//                   keyboardType: TextInputType.text,
//                   validator: (value) {
//                     if (value!.isEmpty) return "fill the blank";
//                     return null;
//                   },
//                   onSaved: (newValue) {
//                     username = newValue!;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.9),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: const Icon(Icons.email, color: Color(0xFFB39DDB)),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value!.isEmpty) return "fill the blank";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.9),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: const Icon(Icons.lock, color: Color(0xFFB39DDB)),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "fill the blank";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: confirmPasswordController,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.9),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: const Icon(Icons.lock, color: Color(0xFFB39DDB)),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "fill the blank";
//                     if (value != passwordController.text) return "Password is not the same";
//                     return null;
//                   },
//                   onSaved: (newValue) {
//                     password = newValue!;
//                   },
//                 ),
//                 const SizedBox(height: 30),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       backgroundColor: const Color(0xFFB39DDB),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                     ),
//                     onPressed: () async {
//                     if (!_formKey.currentState!.validate()) return;
//                     _formKey.currentState!.save();
//                     var response = await context.read<AuthProvider>().signup(username: username, password: password);
//                     if (response['error'] != null) {
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response['error']!)));
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign up successfully")));
//                       context.go('/mainscreen');
//                     }
//                     // if (provider.token[0].isEmpty) {
//                     //   GoRouter.of(context).pop();
//                     // } else {
//                     //   ScaffoldMessenger.of(context).showSnackBar(
//                     //       SnackBar(content: Text(provider.token[0])));
//                     // }
//                   },
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: () {
//                     context.go('/signin');
//                   },
//                   child: const Text(
//                     "Already have an account?",
//                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 230), fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class SignUpPage extends StatelessWidget {
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();

//   SignUpPage({super.key});

//   final _formKey = GlobalKey<FormState>();
//   final Color goldColor = const Color(0xFFE9C575); // Gold color for styling

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Sign Up',
//           style: TextStyle(color: goldColor),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: IconThemeData(color: goldColor),
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Form(
//           key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.person_add_alt_1,
//                   size: 100,
//                   color: goldColor,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Join Us',
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                 ),
//                 const SizedBox(height: 40),
//                 TextFormField(
//                   controller: usernameController,
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your username',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.person, color: goldColor),
//                   ),
//                   keyboardType: TextInputType.text,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your username";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your email',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.email, color: goldColor),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your email";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your password',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.lock, color: goldColor),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your password";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: confirmPasswordController,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Confirm your password',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.lock, color: goldColor),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please confirm your password";
//                     if (value != passwordController.text)
//                       return "Passwords do not match";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 30),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       backgroundColor: goldColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                     ),
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         // Perform signup action
//                         print("Sign-up successful");
//                       }
//                     },
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: () {
//                     print("Navigate to Sign In page");
//                   },
//                   child: Text(
//                     "Already have an account?",
//                     style: TextStyle(color: goldColor, fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final Color goldColor = const Color(0xFFE9C575); // Gold color for styling

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: goldColor),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: goldColor),
      ),
      body: Container(
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_add_alt_1,
                  size: 100,
                  color: goldColor,
                ),
                const SizedBox(height: 20),
                Text(
                  'Join Us',
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
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(color: goldColor),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.person, color: goldColor),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your username";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: goldColor),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.email, color: goldColor),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your email";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: goldColor),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.lock, color: goldColor),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your password";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Confirm your password',
                    hintStyle: TextStyle(color: goldColor),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.lock, color: goldColor),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return "Please confirm your password";
                    if (value != passwordController.text)
                      return "Passwords do not match";
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: goldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform signup action
                        print("Sign-up successful");
                      }
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    context.go(
                        '/SignInPage'); // Navigate to SignInPage using GoRouter
                  },
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: goldColor, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
