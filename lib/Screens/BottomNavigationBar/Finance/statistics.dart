import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/dialog.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
        actions: [
          Icon(
            Icons.more_vert_outlined,
          ),
        ],
        toolbarHeight: 70.0, // Set the height you want
        title: const Text(
          'Statistics',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      // BoxShadow(
                      //   color: black02.withOpacity(0.1), // Shadow color
                      //   offset: Offset(0.0, 7.0), // Offset from right
                      //   blurRadius: 12, // Spread of the shadow
                      //   spreadRadius: 0.0,
                      // ),
                      BoxShadow(
                        color: black02.withOpacity(0.1), // Shadow color
                        offset: Offset(0.0, 0.0), // Offset from right
                        blurRadius: 1, // Spread of the shadow
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // height: 80,
                              width: 170,
                              child: Card(
                                elevation: 2,
                                color: white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), // Correct way to apply border radius
                                  ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Income',
                                        style: const TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff83848B)),
                                      ),
                                      Text(
                                        '+ ₦15,500.90',
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.w600, color: blue),
                                      ),
                                    ],),
                                ),
                              ),
                            ),
                            SizedBox(
                              // height: 80,
                              width: 170,
                              child: Card(
                                  elevation: 2,
                                  color: white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), // Correct way to apply border radius
                                  ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Expenses',
                                        style: TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff83848B)),
                                      ),
                                      Text(
                                        '- ₦12,200.34',
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.w600, color: red),
                                      ),
                                    ],),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      SizedBox(
                        height: 300,
                        child: LineChart(
                          LineChartData(
                            gridData: FlGridData(
                              show: false,
                              drawVerticalLine: false,
                              getDrawingHorizontalLine: (value) {
                                return FlLine(
                                  color: Colors.grey.withOpacity(0.2),
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 32,
                                  getTitlesWidget: (value, meta) {
                                    const style = TextStyle(color: Colors.grey, fontSize: 12);
                                    switch (value.toInt()) {
                                      case 0:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5, left: 15),
                                          child: Text('10', style: style),
                                        );
                                      case 1:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('11 Aug', style: style),
                                        );
                                      case 2:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('12 Aug', style: style),
                                        );
                                      case 3:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('13 Aug', style: style),
                                        );
                                      case 4:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text('14 Aug', style: style),
                                        );
                                      case 5:
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 5, right: 15),
                                          child: Text('15', style: style),
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
                                  reservedSize: 40,
                                  getTitlesWidget: (value, meta) {
                                    return Text(
                                      value.toStringAsFixed(0),
                                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                                    );
                                  },
                                ),
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: true,
                              border: Border.symmetric(
                                horizontal: BorderSide(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 0.5,
                                ),
                              ),
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 900),
                                  FlSpot(1, 870),
                                  FlSpot(2, 873.32),
                                  FlSpot(3, 860),
                                  FlSpot(4, 880),
                                  FlSpot(5, 900)
                                ],
                                isCurved: true,
                                color: blue,
                                barWidth: 3,
                                isStrokeCapRound: true,
                                belowBarData: BarAreaData(
                                  show: true,
                                  // color: blue.withOpacity(0.2),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.green.withOpacity(0.2), Colors.white],
                                  ),
                                ),
                                dotData: FlDotData(show: false),
                              ),
                            ],
                            // minX: 0,
                            // maxX: 5,
                            minY: 840,
                            maxY: 900,
                            lineTouchData: LineTouchData(
                              touchTooltipData: LineTouchTooltipData(
                                getTooltipColor: (LineBarSpot spot) => Colors.white,
                                tooltipRoundedRadius: 8,
                                getTooltipItems: (touchedSpots) {
                                  return touchedSpots.map((touchedSpot) {
                                    String value = touchedSpot.y.toStringAsFixed(2);
                                    return LineTooltipItem(
                                      '\$ $value',
                                      const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                              touchCallback: (FlTouchEvent event, LineTouchResponse? touchResponse) {
                                if (!event.isInterestedForInteractions || touchResponse == null || touchResponse.lineBarSpots == null) {
                                  setState(() {
                                    touchedIndex = -1;
                                  });
                                  return;
                                }

                                setState(() {
                                  touchedIndex = touchResponse.lineBarSpots!.first.spotIndex;
                                });
                              },
                              getTouchedSpotIndicator: (barData, spotIndexes) {
                                return spotIndexes.map((index) {
                                  final spot = barData.spots[index];
                                  return TouchedSpotIndicatorData(
                                    FlLine(
                                      color: Colors.blue.withOpacity(0.5),
                                      strokeWidth: 1,
                                      dashArray: [5, 5], // Dashed vertical line
                                    ),
                                    FlDotData(
                                      show: true,
                                      getDotPainter: (spot, percent, bar, index) =>
                                          FlDotCirclePainter(radius: 6, color: Colors.blue, strokeWidth: 2, strokeColor: Colors.white),
                                    ),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reports',
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600, color: black),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: Color(0xffC2C2C2),
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                report(tap: (){}, icon: Icons.school_outlined, type: 'Education', about: 'School Fees', date: '12 Aug, 2022', amount: '-₦80,000'),
                report(tap: (){}, icon: Icons.phone_iphone_outlined, type: 'Digital Payment', about: 'Data Subscription', date: '11 Aug, 2022', amount: '-₦1,500'),
                report(tap: (){}, icon: Icons.tv_rounded, type: 'Utilities', about: 'Cable Subscription', date: '10 Aug, 2022', amount: '-₦4,700')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
