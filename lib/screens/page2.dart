import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: const Text("Working with setState"),
                ),
                body: const Center(child: Setstate()))));
  }
}

class Setstate extends StatefulWidget {
  const Setstate({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Setstate> {
  int value = 0;
  // ignore: non_constant_identifier_names
  Increment() {
    setState(() {
      value++;
    });
  }

  // ignore: non_constant_identifier_names
  Decrement() {
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value.toString(),
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                backgroundColor: Color(0xFFFF9000),
                color: Colors.blue),
          ),
          ElevatedButton(
              onPressed: () {
                Increment();
              },
              child: const Text("to ++")),
          ElevatedButton(
              onPressed: () {
                Decrement();
              },
              child: const Text(" to --"))
        ],
      )),
    );
  }
}
