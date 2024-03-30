import 'package:flutter/material.dart';
import 'package:satellite_dashboard/screens/home_page.dart';

void main() {
  runApp(const SatelliteDashboard());
}

class SatelliteDashboard extends StatefulWidget {
  const SatelliteDashboard({super.key});

  @override
  State<SatelliteDashboard> createState() => _SatelliteDashboardState();
}

class _SatelliteDashboardState extends State<SatelliteDashboard> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}