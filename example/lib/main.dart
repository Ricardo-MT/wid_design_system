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
      home: const MyHomePage(title: 'Wid Design System Demo'),
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
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const WidText(text: 'This is a regular text'),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Placeholdery", label: WidText(text: "Yeary")),
              ),
              spacerM,
              const WidButton(
                onPressed: dummyFunction,
                text: "Contained",
                variant: WidButtonVariant.contained,
              ),
              spacerM,
              const WidButton(
                onPressed: dummyFunction,
                text: "Text",
                variant: WidButtonVariant.text,
              ),
              spacerM,
              const WidButton(
                onPressed: dummyFunction,
                text: "Outlined",
                variant: WidButtonVariant.outlined,
              ),
              spacerM,
              const WidButton(
                onPressed: dummyFunction,
                text: "Call to action",
                variant: WidButtonVariant.callToAction,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Switch.adaptive(
          value: Provider.of<WidThemeProvider>(context, listen: true).mode ==
              ThemeMode.light,
          onChanged: (value) =>
              Provider.of<WidThemeProvider>(context, listen: false)
                  .toggleThemeMode()),
    );
  }
}

void dummyFunction() {}
