import 'package:flutter/material.dart';
import 'package:satellite_dashboard/screens/home_page.dart';

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
          Expanded(flex:5, child:Center(child: IconButton(onPressed: (){  Navigator.pop(context);
}, icon: const Icon(Icons.access_alarm)),))
          ],
      )
    );
  }
}

