import 'package:Frontend/pages/main_page.dart';
import 'package:Frontend/pages/signin_page.dart';
import 'package:Frontend/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:Frontend/pages/test_page.dart';
import 'package:Frontend/pages/profile_page.dart';
import 'package:Frontend/providers/auth_provider.dart';
import 'package:Frontend/providers/card_provider.dart';

import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
        ChangeNotifierProvider<VCardsProvider>(create: (_) => VCardsProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/test', // Main page
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
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
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
