# Wid Design System

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]
[![Pub](https://img.shields.io/pub/v/wid_design_system)](https://pub.dev/packages/wid_design_system)

A collection of widgets, colors, styles, providers and asorted utils for implementing the Wid Design System.

## Roadmap

- [ ] Tests
- [ ] More widgets
- [ ] Performance improvements

## How to use

Just import the package and you´ll get a `WidAppTheme.light` light theme and a `WidAppTheme.dark` dark theme out of the box. Check out the example for more detail.

```dart
import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: WidAppTheme.dark,
      theme: WidAppTheme.light,
      home: const MyHomePage(title: 'My App'),
    );
  }
}
```

You can also add this to your `pubspec.yaml` to include the `Quicksand` font provided by this package:

```yaml
flutter:
  uses-material-design: true
  generate: true

  fonts:
    - family: Quicksand
      fonts:
        - asset: packages/wid_design_system/fonts/Quicksand-Bold.ttf
          weight: 700
        - asset: packages/wid_design_system/fonts/Quicksand-SemiBold.ttf
          weight: 600
        - asset: packages/wid_design_system/fonts/Quicksand-Medium.ttf
          weight: 500
        - asset: packages/wid_design_system/fonts/Quicksand-Regular.ttf
          weight: 400
        - asset: packages/wid_design_system/fonts/Quicksand-Light.ttf
          weight: 300
```

## Installation 💻

**❗ In order to start using Wid Design System you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `wid_design_system` to your `pubspec.yaml`:

```yaml
dependencies:
  wid_design_system:
```

Install it:

```sh
flutter packages get
```

---

## Continuous Integration 🤖

Wid Design System comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

For first time users, install the [very_good_cli][very_good_cli_link]:

```sh
dart pub global activate very_good_cli
```

To run all unit tests:

```sh
very_good test --coverage
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
