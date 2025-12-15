import 'package:flutter/material.dart';
import 'package:tropicana_theme/tropicana_theme.dart';

void main() {
  runApp(const TropicanaExampleApp());
}

/// The main application widget for the Tropicana Theme example.
class TropicanaExampleApp extends StatefulWidget {
  /// Creates a [TropicanaExampleApp].
  const TropicanaExampleApp({super.key});

  @override
  State<TropicanaExampleApp> createState() => _TropicanaExampleAppState();
}

class _TropicanaExampleAppState extends State<TropicanaExampleApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tropicana Theme Example',
      theme: TropicanaTheme.light,
      darkTheme: TropicanaTheme.dark,
      themeMode: _themeMode,
      home: KitchenSinkPage(
        onToggleTheme: _toggleTheme,
        isDarkMode: _themeMode == ThemeMode.dark,
      ),
    );
  }
}

/// A page showcasing various UI components with the Tropicana theme.
class KitchenSinkPage extends StatelessWidget {
  /// Creates a [KitchenSinkPage].
  const KitchenSinkPage({
    required this.onToggleTheme,
    required this.isDarkMode,
    super.key,
  });

  /// Callback to toggle between light and dark themes.
  final VoidCallback onToggleTheme;

  /// Whether the current theme is dark mode.
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tropicana Kitchen Sink'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: onToggleTheme,
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTypographySection(context),
            const SizedBox(height: 32),
            _buildButtonsSection(context),
            const SizedBox(height: 32),
            _buildInputsSection(context),
            const SizedBox(height: 32),
            _buildCardsSection(context),
            const SizedBox(height: 32),
            _buildColorsSection(context),
            const SizedBox(height: 64), // Fab spacing
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTypographySection(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Typography', style: textTheme.headlineMedium),
        const SizedBox(height: 16),
        Text('Display Large', style: textTheme.displayLarge),
        Text('Display Medium', style: textTheme.displayMedium),
        Text('Display Small', style: textTheme.displaySmall),
        const Divider(height: 32),
        Text('Headline Large', style: textTheme.headlineLarge),
        Text('Headline Medium', style: textTheme.headlineMedium),
        Text('Headline Small', style: textTheme.headlineSmall),
        const Divider(height: 32),
        Text('Title Large', style: textTheme.titleLarge),
        Text('Title Medium', style: textTheme.titleMedium),
        Text('Title Small', style: textTheme.titleSmall),
        const Divider(height: 32),
        Text(
          'Body Large: Lorem ipsum dolor sit amet, consectetur adipiscing '
          'elit. Sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua.',
          style: textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        Text(
          'Body Medium: Ut enim ad minim veniam, quis nostrud exercitation '
          'ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        Text(
          'Body Small: Duis aute irure dolor in reprehenderit in voluptate '
          'velit esse cillum dolore eu fugiat nulla pariatur.',
          style: textTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _buildButtonsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Buttons', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled Elevated'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
          ],
        ),
      ],
    );
  }

  Widget _buildInputsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Inputs', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Standard Input',
            hintText: 'Enter some text',
          ),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Error Input',
            errorText: 'This field has an error',
          ),
        ),
        const SizedBox(height: 16),
        const TextField(
          enabled: false,
          decoration: InputDecoration(
            labelText: 'Disabled Input',
            hintText: 'Cannot type here',
          ),
        ),
      ],
    );
  }

  Widget _buildCardsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Cards', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card Title',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'This is a card component using the Tropicana theme. It has '
                  'custom borders and colors.',
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('ACTION 1')),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColorsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Palette', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _ColorBox(
              color: TropicanaColors.deepJungleGreen,
              name: 'Deep Jungle Green',
              textColor: Colors.white,
            ),
            _ColorBox(
              color: TropicanaColors.middleGreenYellow,
              name: 'Middle Green Yellow',
              textColor: Colors.black,
            ),
            _ColorBox(
              color: TropicanaColors.beige,
              name: 'Beige',
              textColor: Colors.black,
            ),
            _ColorBox(
              color: TropicanaColors.goldenOchre,
              name: 'Golden Ochre',
              textColor: Colors.black,
            ),
            _ColorBox(
              color: TropicanaColors.spanishOrange,
              name: 'Spanish Orange',
              textColor: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}

class _ColorBox extends StatelessWidget {
  const _ColorBox({
    required this.color,
    required this.name,
    required this.textColor,
  });

  final Color color;
  final String name;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withAlpha(50)),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
