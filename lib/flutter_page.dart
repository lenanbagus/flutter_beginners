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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Image.asset(
                  'images/raiden.jpg',
                  width: 175,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Raiden Azzamy Lenan',
                  style: TextStyle(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Elevated Pushed');
              },
              child: const Text('Elevate Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Pushed');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Pushed');
              },
              child: const Text('Text Button'),
            ),

            Image.network(
                'https://ktp-production-public.s3.us-east-2.amazonaws.com/photos-resized/course_main-328.c8d0a95448a1e51b2773984f005b4bc1-1280.jpeg'),
          ],
        ),
      ),
    );
  }
}
