import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class AppSizes {
  // <— tweak sizes here
  static const double pagePadding = 12;
  static const double itemHeight = 120; // was 100
  static const double itemRadius = 16;
}

class AppPalette {
  // <— tweak colors here
  static const seed = Color(0xFF4F46E5); // Indigo 600
  static const background = Color(0xFFF7F7FB);

  // Nice, saturated row colors
  static const rowColors = <Color>[
    Color(0xFF22C55E), // green
    Color(0xFF06B6D4), // cyan
    Color(0xFFF59E0B), // amber
    Color(0xFFEF4444), // red
    Color(0xFF8B5CF6), // violet
    Color(0xFF10B981), // emerald
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppPalette.seed),
        scaffoldBackgroundColor: AppPalette.background,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const int itemCount = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.pagePadding),
        child: ListView.separated(
          itemCount: itemCount,
          separatorBuilder: (_, __) => const SizedBox(height: AppSizes.pagePadding),
          itemBuilder: (context, index) {
            final color = AppPalette.rowColors[index % AppPalette.rowColors.length];

            return _ColorCard(
              height: AppSizes.itemHeight,
              color: color,
              label: 'Item #${index + 1}',
            );
          },
        ),
      ),
    );
  }
}

class _ColorCard extends StatelessWidget {
  final double height;
  final Color color;
  final String label;

  const _ColorCard({
    required this.height,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.itemRadius),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.85),
              color,
            ],
          ),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// Optional extra widget – replace or remove as you like
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) => const Placeholder();
}
