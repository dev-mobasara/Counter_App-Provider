import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/controllers/homepage_controler.dart';

class BackPage extends StatelessWidget {
  const BackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<HomePageProvider>().counterNum;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BackBack"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You have pushed the button in home page:",
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
    );
  }
}
