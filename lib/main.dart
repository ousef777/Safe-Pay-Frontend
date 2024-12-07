// import 'package:Frontend/pages/main_page.dart';
// import 'package:flutter/material.dart';
// import 'package:Frontend/pages/signin_page.dart';
// import 'package:Frontend/pages/signup_page.dart';
// import 'package:Frontend/pages/test_page.dart';
// import 'package:Frontend/pages/profile_page.dart';
// import 'package:Frontend/providers/auth_provider.dart';
// import 'package:Frontend/providers/recipe_provider.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
//         ChangeNotifierProvider<RecipesProvider>(
//             create: (_) => RecipesProvider()),
//       ],
//       child: const MainApp(),
//     ),
//   );
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final GoRouter router = GoRouter(
//       initialLocation: '/signup', // Main page
//       routes: [
//         GoRoute(
//           path: '/signin',
//           builder: (context, state) => SignInPage(),
//         ),
//         GoRoute(
//           path: '/signup',
//           builder: (context, state) => SignUpPage(),
//         ),
//         GoRoute(
//           path: '/mainscreen',
//           builder: (context, state) => const MainScreen(),
//         ),
//         GoRoute(
//           path: '/test',
//           builder: (context, state) => const TestPage(),
//         ),
//         GoRoute(
//           path: '/main_page',
//           builder: (context, state) => MainPage(),
//         ),
//       ],
//     );

//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routerConfig: router,
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int selectedIndex = 0; // Track the selected tab index

//   // List of pages for each tab
//   final List<Widget> pages = [
//     // const HomePage(), // Home page content
//     ProfilePage(), // Profile page content
//   ];

//   void onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index; // Update the selected tab
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[selectedIndex], // Display the selected page
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.grid_view), label: 'Categories'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: 'Favorites'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: const Color(0xFFB39DDB),
//         unselectedItemColor: Colors.grey,
//         onTap: onItemTapped,
//       ),
//     );
//   }
// }
import 'package:Frontend/pages/main_page.dart';
import 'package:Frontend/pages/signin_page.dart';
import 'package:Frontend/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:my_new_app/SplashScreen.dart';
// import 'package:my_new_app/signin_page.dart';
// import 'package:my_new_app/signup_page.dart';
// import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) =>
              // SplashScreen()
              const MyHomePage(
            title: 'the main page ',
          ),
        ),
        // GoRoute(
        //   path: '/SplashScreen',
        //   builder: (context, state) => SplashScreen(),
        // ),
        GoRoute(
          path: '/MainPage',
          builder: (context, state) => MainPage(),
        ),
        GoRoute(
          path: '/SignInPage',
          builder: (context, state) => SignInPage(),
        ),
        GoRoute(
          path: '/SignUpPage',
          builder: (context, state) => SignUpPage(),
        ),
      ],
    );
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Add a button that will navigate to the MainPage
            TextButton(
              onPressed: () {
                context.go('/MainPage'); // Navigate to MainPage using GoRouter
              },
              child: const Text('Go to Main Page'),
            ),
            TextButton(
              onPressed: () {
                context
                    .go('/SignInPage'); // Navigate to MainPage using GoRouter
              },
              child: const Text('Go to sign in page '),
            ),
            TextButton(
              onPressed: () {
                context
                    .go('/SignUpPage'); // Navigate to MainPage using GoRouter
              },
              child: const Text('Go to sign up page '),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
