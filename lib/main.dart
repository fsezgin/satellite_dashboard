import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satellite_dashboard/screens/home_page.dart';
import 'package:satellite_dashboard/screens/table_page.dart';
import 'package:satellite_dashboard/services/satellite.dart';

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
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: TableProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/table': (context) => const TablePage()
      },
      ),
    );
  }
}