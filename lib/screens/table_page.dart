import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satellite_dashboard/screens/home_page.dart';
import 'package:satellite_dashboard/services/satellite.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(250, 241, 242, 246),
      body: Row(
          children: [
          const CustomSideBar(),
          Expanded(flex:5, child:Center(child: DataTable(
            columns: const [
              DataColumn(label: Text("Basinc1"),),
              DataColumn(label: Text("Basinc2"),),
              DataColumn(label: Text("GPS1 Altitude"),),
              DataColumn(label: Text("GPS1 Latitude"),),
              DataColumn(label: Text("GPS1 Longitude"),),

            ],
            rows: Provider.of<TableProvider>(context, listen: false).satellite.map((e) => DataRow(
            cells: [
              DataCell(Text(e.basinc1.toString()),),
              DataCell(Text(e.basinc2.toString()),),
              DataCell(Text(e.gps1Altitude.toString()),),
              DataCell(Text(e.gps1Latitude.toString()),),
              DataCell(Text(e.gps1Longitude.toString()),),
              ],),).toList() ?? [],
          ),),)
          ],
      )
    );
  }
}

