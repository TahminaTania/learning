import 'package:flutter/material.dart';
import 'package:learning/main.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => const MyApp()));
            },
            child: const Text("Back to Main Page"),
          ),
        ),
      ),
    );
  }
}
