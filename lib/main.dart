import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, child) => ResponsiveBreakpoints.builder(
      child: const MaterialApp(home: HomeScreen()),
      breakpoints: [
        const Breakpoint(start: 0, end: 500, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    ),
  ));
}
