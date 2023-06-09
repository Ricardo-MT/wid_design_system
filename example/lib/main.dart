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
      debugShowCheckedModeBanner: false,
      darkTheme: WidAppTheme.dark,
      theme: WidAppTheme.light,
      themeMode: Provider.of<WidThemeProvider>(context, listen: true).mode,
      home: const MyHomePage(title: 'Wid DS - Storybook'),
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
    return WidTapToHideKeyboard(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
          actions: const [
            TodosOverviewFilterButton(),
            Icon(Icons.g_translate_rounded),
            Icon(Icons.label_important_outline_rounded)
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Switch.adaptive(
                      value:
                          Provider.of<WidThemeProvider>(context, listen: true)
                                  .mode ==
                              ThemeMode.light,
                      onChanged: (value) =>
                          Provider.of<WidThemeProvider>(context, listen: false)
                              .toggleThemeMode()),
                  const Text('This is a regular text'),
                  const TodoListTile(
                    title: "Take out bin",
                    subtitle: "Tomorrow, maybe?",
                    isCompleted: false,
                  ),
                  const TodoListTile(
                    title: "Mercadona shopping",
                    subtitle: "Take a lot of money",
                    isCompleted: true,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Placeholdery",
                        label: WidText(text: "Yeary")),
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
        ),
        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _HomeTabButton(
                groupValue: 1,
                value: 0,
                icon: Icon(Icons.list_rounded),
              ),
              _HomeTabButton(
                groupValue: 1,
                value: 1,
                icon: Icon(Icons.show_chart_rounded),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionButton(
          key: Key('homeView_addTodo_floatingActionButton'),
          onPressed: dummyFunction,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton({
    required this.groupValue,
    required this.value,
    required this.icon,
  });

  final int groupValue;
  final int value;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: dummyFunction,
      iconSize: 32,
      color:
          groupValue != value ? null : Theme.of(context).colorScheme.secondary,
      icon: icon,
    );
  }
}

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isCompleted,
  });

  final String title;
  final String subtitle;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final captionColor = theme.textTheme.bodySmall?.color;

    return ListTile(
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: isCompleted
            ? null
            : TextStyle(
                color: captionColor,
                decoration: TextDecoration.lineThrough,
              ),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Checkbox(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        value: isCompleted,
        onChanged: (value) => dummyFunction(),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}

class TodosOverviewFilterButton extends StatelessWidget {
  const TodosOverviewFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      initialValue: 1,
      tooltip: "See more",
      onSelected: (filter) {},
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: 1,
            child: Text("Option A"),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text("Option B"),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text("Option C"),
          ),
        ];
      },
      icon: const Icon(Icons.filter_list_rounded),
    );
  }
}

void dummyFunction() {}
