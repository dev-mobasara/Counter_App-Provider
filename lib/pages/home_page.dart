import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/controllers/homepage_controler.dart';
import 'package:provider_counter/pages/back_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<HomePageProvider>().counterNum;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const BackPage()),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You have pushed the button in here :",
            ),
            Consumer<HomePageProvider>(
              builder: (context, provider, child) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => context.read<HomePageProvider>().counterChecker(),
        tooltip: 'Click Here',
        child: const Icon(Icons.add),
      ),
    );
  }
}
