import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wid_design_system/wid_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WidThemeProvider()),
      ],
      child: const MyPresentationApp(),
    );
  }
}

class MyPresentationApp extends StatelessWidget {
  const MyPresentationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wid DS - Storybook',
      darkTheme: WidAppTheme.dark,
      theme: WidAppTheme.light,
      themeMode: Provider.of<WidThemeProvider>(context, listen: true).mode,
      home: Consumer<WidThemeProvider>(
        builder: ((context, value, child) =>
            const MyHomePage(title: 'Wid DS Demo Page')),
      ),
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
        title: WidText.displayLarge(text: widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const WidText(text: 'Currently active theme:'),
            WidText(
                text: Provider.of<WidThemeProvider>(context, listen: true)
                    .mode
                    .toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<WidThemeProvider>(context, listen: false)
            .toggleThemeMode,
        tooltip: 'Toggle theme',
        child: const Icon(Icons.swap_calls),
      ),
    );
  }
}
