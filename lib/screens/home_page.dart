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
      body: SafeArea(child:
       Row(
        children: [
          Expanded(flex:1, child:Container(color:Colors.blue,),),
          Expanded(flex:6, child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: LineChartSample7(),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: LineChartSample7(),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: LineChartSample7(),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: LineChartSample7(),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: LineChartSample7(),
                  )
                ],
              ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(
                width: 450,
                height: 450,
                child: Image(image: AssetImage("assets/images/kamera_goruntusu.jpg",),fit: BoxFit.fill,),
              ),
              Container(
                width: 450,
                height: 450,
                color: Colors.grey,
              ),
             ],
            ),
            ],
          ),),
        ],
       )),
    );
  }
}