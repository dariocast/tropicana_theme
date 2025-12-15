# Tropicana Theme

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A vibrant, tropical-inspired Flutter theme package that brings warmth and energy to your application. This package provides a carefully curated set of colors and typography, along with customized component themes for both light and dark modes.

## Features ✨

*   **Custom Color Palette:** A lush selection of colors including Deep Jungle Green, Middle Green Yellow, Golden Ochre, and Spanish Orange.
*   **Distinctive Typography:** utilizes **Fraunces** for expressive headlines and **Mulish** for clean, readable body text.
*   **Light & Dark Modes:** Fully supported themes that adapt automatically or manually.
*   **Component Styling:** Pre-configured styles for common widgets like `AppBar`, `ElevatedButton`, `Card`, `InputDecoration`, and `FloatingActionButton`.

## Installation 💻

**❗ In order to start using Tropicana Theme you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Install via `flutter pub add`:

```sh
dart pub add tropicana_theme
```

## Usage 🎨

Import the package and use `TropicanaTheme.light` and `TropicanaTheme.dark` in your `MaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:tropicana_theme/tropicana_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tropicana Demo',
      theme: TropicanaTheme.light,
      darkTheme: TropicanaTheme.dark,
      home: const MyHomePage(),
    );
  }
}
```

## Color Palette 🎨

| Color Name | Hex Code | Role |
| :--- | :--- | :--- |
| **Deep Jungle Green** | `#0D4949` | Primary / Text |
| **Middle Green Yellow** | `#A4C24F` | Secondary / Accents |
| **Beige** | `#F6F6E3` | Surface / Background |
| **Golden Ochre** | `#FBC948` | Primary Container / Highlights |
| **Spanish Orange** | `#DB611D` | Tertiary / Alert / CTA |

## Typography ✍️

*   **Headlines:** [Fraunces](https://fonts.google.com/specimen/Fraunces) - A display-serif typeface with plenty of personality.
*   **Body:** [Mulish](https://fonts.google.com/specimen/Mulish) - A versatile sans-serif designed for readability.

---

## Continuous Integration 🤖

Tropicana Theme comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

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
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows