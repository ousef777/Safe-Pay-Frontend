import 'package:flutter/material.dart';
import 'package:Frontend/providers/auth_provider.dart';
import 'package:Frontend/providers/card_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VCards"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: FutureBuilder(
          future: context.read<AuthProvider>().initAuth(),
          builder: (context, snapshot) {
            return Consumer<AuthProvider>(
              builder: (context, provider, _) {
                return (provider.isAuth()) ? 
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const Text("Welcome user"),
                    ListTile(
                      title: const Text("Log out"),
                      trailing: const Icon(Icons.how_to_reg),
                      onTap: () {
                        provider.logout();
                      },
                    )
                  ],
                )
                :
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      title: const Text("Signin"),
                      trailing: const Icon(Icons.login),
                      onTap: () {
                        GoRouter.of(context).push('/signin');
                      },
                    ),
                    ListTile(
                      title: const Text("Signup"),
                      trailing: const Icon(Icons.how_to_reg),
                      onTap: () {
                        GoRouter.of(context).push('/signup');
                      },
                    )
                  ],
                );
              }
            );
          }
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/add');
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Add a new VCard"),
                ),
              ),
            ),
            FutureBuilder(
              future:
                  Provider.of<VCardsProvider>(context, listen: false).getVCards(),
              builder: (context, dataSnapshot) {
                if (dataSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (dataSnapshot.error != null) {
                    print(dataSnapshot.error);
                    return const Center(
                      child: Text('An error occurred'),
                    );
                  } else {
                    return Consumer<VCardsProvider>(
                      builder: (context, provider, child) =>
                          GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio:
                                    MediaQuery.of(context).size.width /
                                        (MediaQuery.of(context).size.height),
                              ),
                              physics:
                                  const NeverScrollableScrollPhysics(), // <- Here
                              itemCount: provider.cards.length,
                              itemBuilder: (context, index) =>
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(provider.cards[index].name),
                                )
                              ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        // type: BottomNavigationBarType.shifting,
        onTap: (value) {
          print(value);
          if (value == 2) GoRouter.of(context).push('/profile');
        },
      )
    );
  }
}