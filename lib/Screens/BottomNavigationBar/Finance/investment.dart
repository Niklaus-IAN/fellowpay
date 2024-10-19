
import 'package:fellowpay/Screens/BottomNavigationBar/Finance/recommendation.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Finance/statistics.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';


class invests extends StatefulWidget {
  const invests({super.key});

  @override
  State<invests> createState() => _investsState();
}

class _investsState extends State<invests> {
  @override
  Widget build(BuildContext context) {

    String amount = '821.87';

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 15),
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: black,
        //     ),
        //   ),
        // ),
        iconTheme: IconThemeData(color: white),
        actions: [
          Icon(
              Icons.more_vert_outlined,
              color: white,
            ),
        ],
        backgroundColor: blue,
        toolbarHeight: 80.0, // Set the height you want
        title: Text(
          'Investments',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xffffffff)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                ),
                child: Container(
                  height: 72,
                  decoration: BoxDecoration(
                      color: Color(0xffEAEEF9),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 23.5, backgroundColor: Color(0xff768CFE),),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Holly Inc.',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600, color: black),
                            ),
                            Text(
                              'HOLLY',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500, color: black),
                            ),
                          ],),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '₦ $amount',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500, color: black),
                            ),
                            Text(
                              '-21.3 (12%)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500, color: black),
                            ),
                          ],),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Statistics',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600, color: black),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Stats()));
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Week',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '+2.36 (2%)',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 280, // Adjust height as per design
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  drawVerticalLine: false, // Disable vertical lines
                                  // drawHorizontalLine: true,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: Colors.grey.withOpacity(0.2), // Light grey for grid lines
                                      strokeWidth: 1,
                                      dashArray: [3,3]
                                    );
                                  },
                                ),
                                titlesData: FlTitlesData(
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 22,
                                      getTitlesWidget: (value, meta) {
                                        const style = TextStyle(color: Colors.grey, fontSize: 12);
                                        switch (value.toInt()) {
                                          case 0:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('12 Aug', style: style),
                                            );
                                          case 1:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('13 Aug', style: style),
                                            );
                                          case 2:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('14 Aug', style: style),
                                            );
                                          case 3:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('15 Aug', style: style),
                                            );
                                          case 4:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('16 Aug', style: style),
                                            );
                                          case 5:
                                            return Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text('17 Aug', style: style),
                                            );
                                          default:
                                            return Container();
                                        }
                                      },
                                      interval: 1,
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                      interval: 10,
                                      reservedSize: 40,
                                      getTitlesWidget: (value, meta) {
                                        const style = TextStyle(color: Colors.black, fontSize: 12);
                                        if (value % 10 == 0) {
                                          return Text('${value.toInt()}', style: style);
                                        }
                                        return Container();
                                      },
                                    ),
                                  ),
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false), // Hide right Y-axis
                                  ),
                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false), // Hide top titles
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.symmetric(horizontal: BorderSide(color: Colors.grey.withOpacity(0.2), width: 0.5)), // Border styling
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 900),
                                      FlSpot(1, 870),
                                      FlSpot(2, 873.32),
                                      FlSpot(3, 860),
                                      FlSpot(4, 880),
                                      FlSpot(5, 840)
                                    ],
                                    isCurved: true,
                                    color: Colors.green,
                                    barWidth: 3,
                                    dotData: FlDotData(
                                      show: true,
                                      getDotPainter: (spot, percent, barData, index) {
                                        if (index == 2) {
                                          return FlDotCirclePainter(
                                            radius: 4,
                                            color: Colors.white,
                                            strokeWidth: 3,
                                            strokeColor: Colors.green,
                                          );
                                        }
                                        return FlDotCirclePainter(
                                          radius: 0, // Hide dots for other spots
                                        );
                                      },
                                    ),
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                ],
                                minY: 840,
                                maxY: 900,
                                lineTouchData: LineTouchData(
                                  touchTooltipData: LineTouchTooltipData(
                                    getTooltipColor: (LineBarSpot spot) => Colors.white, // Set tooltip background to white
                                    getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                                      return touchedBarSpots.map((barSpot) {
                                        return LineTooltipItem(
                                          '₦ ${barSpot.y.toStringAsFixed(2)}', // Use the actual y-value from the spot
                                          TextStyle(color: black, fontWeight: FontWeight.w500, fontSize: 15),
                                        );
                                      }).toList();
                                    },
                                  ),
                                  touchCallback: (FlTouchEvent event, LineTouchResponse? response) {},
                                  handleBuiltInTouches: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommendations',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600, color: black),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Recommend()));
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: black02.withOpacity(0.1), // Shadow color
                            offset: Offset(0.0, 7.0), // Offset from right
                            blurRadius: 12, // Spread of the shadow
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: SizedBox(
                                height: 52,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.w600, color: black),
                                        ),
                                        Text(
                                          'Per Share',
                                          style: TextStyle(
                                              fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff83848B)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '₦ $amount',
                                          style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.w500, color: black),
                                        ),
                                        Text(
                                          '-12.34 (9.82%)',
                                          style: TextStyle(
                                              fontSize: 13, fontWeight: FontWeight.w500, color: red),
                                        ),
                                      ],),
                                  ],
                                ),
                              ),
                            ),
                            Divider(height: 2, thickness: 1.0, color: Color(0xffF2F2F2),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: SizedBox(
                                height: 52,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.w600, color: black),
                                        ),
                                        Text(
                                          'Per Share',
                                          style: TextStyle(
                                              fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff83848B)),
                                        ),
                                      ],),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '₦ 982.98',
                                          style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.w500, color: black),
                                        ),
                                        Text(
                                          '-32.89 (12.8%)',
                                          style: TextStyle(
                                              fontSize: 13, fontWeight: FontWeight.w500, color: red),
                                        ),
                                      ],),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 180,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              splashFactory:
                              NoSplash.splashFactory,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    50), // Change the border radius here
                                side: BorderSide(width: 1.0, color: blue, style: BorderStyle.solid)
                              ),
                            ),
                            child: Text(
                              'Sell',
                              style: TextStyle(
                                  color: blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 180,
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              splashFactory:
                              NoSplash.splashFactory,
                              backgroundColor: blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      50), // Change the border radius here
                                  side: BorderSide(width: 1.0, color: blue, style: BorderStyle.solid)
                              ),
                            ),
                            child: Text(
                              'Buy',
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
