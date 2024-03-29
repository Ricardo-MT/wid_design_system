import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wid_design_system/wid_design_system.dart';

final widTheme = WidAppTheme.fromBlackAndWhite(

    /// Uncomment these lines and hit Hot Restart to use a custom color and font.
    // primaryColor: white,

    /// You can use any font you want, but make sure to include it in
    /// your pubspec.yaml file.
    // fontFamily: "Kalnia",
    );

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
      darkTheme: widTheme.dark,
      theme: widTheme.light,
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
                  spacerM,
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const Center(
                          child: SizedBox(
                            height: 400,
                            child: Text("This is a modal bottom sheet"),
                          ),
                        ),
                      );
                    },
                    child: const Text("Contained (open dialog)"),
                  ),
                  spacerM,
                  const TextButton(
                    onPressed: dummyFunction,
                    child: Text("Text"),
                  ),
                  spacerM,
                  const OutlinedButton(
                    onPressed: dummyFunction,
                    child: Text("Outlined"),
                  ),
                  spacerM,
                  WidButton(
                    onPressed: () => showTimePicker(
                        context: context, initialTime: TimeOfDay.now()),
                    text: "Call to action (select time)",
                    variant: WidButtonVariant.callToAction,
                  ),
                  spacerM,
                  FilterChip(
                    label: const Text("Selected"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                      onSelected: (value) {},
                      label: const Text("Not selected"),
                      selected: false),
                  InputChip(
                    label: const Text("Input choice"),
                    selected: false,
                    onDeleted: () {},
                  ),
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
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: "Blue",
                        child: Text("Blue"),
                      ),
                      DropdownMenuItem(
                        value: "Green",
                        child: Text("Green"),
                      ),
                      DropdownMenuItem(
                        value: "Yellow",
                        child: Text("Yellow"),
                      ),
                    ],
                    onChanged: (value) {},
                    // hint: const Text("Some hint"),
                    decoration: const InputDecoration(
                        label: Text("Select color"), hintText: "More hint"),
                  ),
                  spacerL,
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Placeholdery", label: Text("Yeary")),
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
        floatingActionButton: FloatingActionButton(
          key: const Key('homeView_addTodo_floatingActionButton'),
          onPressed: () => showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
          ),
          child: const Icon(Icons.date_range),
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
