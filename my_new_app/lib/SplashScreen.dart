// import 'package:flutter_native_splash/flutter_native_splash.dart';

// import 'package:flutter/material.dart';
// import 'package:my_new_app/main_page.dart';

// // Import your HomePage

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );

//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     );

//     _controller.forward();

//     // Navigate to HomePage after the animation
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => MainPage()),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const Color goldColor = Color(0xFFE9C575);
//     return Scaffold(
//       // backgroundColor: Colors.black, // Background color of splash screen
//       body: Center(
//         child: FadeTransition(
//           opacity: _animation,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/2.png', // Replace with your logo path
//                 height: 200, // Logo height
//                 width: 200, // Logo width
//               ),
//               SizedBox(height: 20), // Space between logo and text
//               Text(
//                 'Welcome to Safe Pay App',
//                 style: TextStyle(
//                   color: goldColor,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10), // Space between text and loading indicator
//               CircularProgressIndicator(
//                 valueColor:
//                     AlwaysStoppedAnimation<Color>(goldColor), // Loader color
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'main_page.dart'; // Ensure you import the MainPage

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();

    // Navigate to HomePage after the animation
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    return Scaffold(
      backgroundColor: Colors.black, // Background color of splash screen
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/2.png', // Replace with your logo path
                height: 200, // Logo height
                width: 200, // Logo width
              ),
              SizedBox(height: 20), // Space between logo and text
              Text(
                'Welcome to SafePay App',
                style: TextStyle(
                  color: goldColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Space between text and loading indicator
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(goldColor), // Loader color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
