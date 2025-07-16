import 'package:bedrock_flutter/bedrock_flutter.dart';
import 'package:example/demos/typography_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BedrockApp(
      title: 'Bedrock Demo',
      home: const BedrockDemo(),
    );
  }
}

class BedrockDemo extends StatefulWidget {
  const BedrockDemo({super.key});

  @override
  State<BedrockDemo> createState() => _BedrockDemoState();
}

class _BedrockDemoState extends State<BedrockDemo> {
  String title = 'Bedrock Demo';
  Widget? demo;
  bool isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
        actions: [
          IconButton(
            icon: isLightTheme
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            onPressed: () {
              setState(() {
                isLightTheme = !isLightTheme;
              });
              BedrockTheme.provider(context)?.toggleTheme();
            },
          ),
          const SizedBox(width: 15),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              'Components',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Builder(
              builder: (context) {
                return ListTile(
                  title: Text('Typography'),
                  iconColor: Colors.black,
                  leading: const Icon(Icons.text_fields),
                  onTap: () {
                    setState(() {
                      demo = const TypographyDemo();
                      title = 'Typography';
                    });
                    Scaffold.of(context).closeDrawer();
                  },
                );
              },
            ),
          ],
        ),
      ),
      body:
          demo ??
          Center(
            child: Text('Tap on menu to see the components'),
          ),
    );
  }
}
