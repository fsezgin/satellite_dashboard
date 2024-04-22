import 'package:flutter/material.dart';
import 'package:satellite_dashboard/widgets/line_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 241, 242, 246),
      body: Row(
        children: [
          const CustomSideBar(),
          Expanded(flex:5, child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0,0,0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Graph",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0,0,0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("These are important feature's real-time graph to control data.",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 104, 103, 103)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,30,30,30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 550, height: 550, color: Colors.green,),
                        Container(width: 900, height: 550, color: Colors.yellow, child: const Image(image: AssetImage("assets/images/uydu.png",)),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0,0,0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Graph",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0,0,0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("These are important feature's real-time graph to control data.",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 104, 103, 103)),),
                      ],
                    ),
                  ),
                   const Padding(
                    padding:  EdgeInsets.fromLTRB(30,30,30,30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         SizedBox(width: 450,height: 450, child: LineChartSample7(),),
                         SizedBox(width: 450,height: 450, child: LineChartSample7(),),
                         SizedBox(width: 450,height: 450, child: LineChartSample7(),),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.fromLTRB(30,30,30,30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const  SizedBox(width: 450,height: 450, child: LineChartSample7(),),
                        const SizedBox(width: 450,height: 450, child: LineChartSample7(),),
                         Container(width: 450,height: 450, color: Colors.green,)
                      ],
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
          ),
        ],
      )
    );
  }
}


// Created the custom side bar
class CustomSideBar extends StatelessWidget {
  const CustomSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(flex:1, child: Container(height: double.maxFinite, width: double.maxFinite, color: Colors.white,
    child: const Column(
      children: [
         Image(image: AssetImage("assets/images/logo.png"), width: 200, height: 200),
        CustomSideButton(buttonText: "Home", iconData: Icons.home_filled,),
        CustomSideButton(buttonText: "Table", iconData: Icons.table_chart_outlined,),
        CustomSideButton(buttonText: "Settings", iconData: Icons.settings,),
        CustomSideButton(buttonText: "Info", iconData: Icons.insert_drive_file_outlined,)
      ],
    ),
    ));
  }
}

// Created the custom button for side bar
class CustomSideButton extends StatelessWidget {
  final String? buttonText;
  final IconData? iconData;

  const CustomSideButton({
    this.buttonText,
    this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      IconButton(onPressed: (){
      // Navigate to the second screen using a named route.
      Navigator.pushNamed(context, '/table');
      }, icon:  Icon(iconData ?? Icons.abc_outlined), iconSize: 25,),
      Text(buttonText ?? "")
    ],);
  }
}