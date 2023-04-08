import 'package:flutter/material.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({super.key});

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page II'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('images/raiden.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Raiden Azzamy Lenan')
        ],
      ),
    );
  }
}
