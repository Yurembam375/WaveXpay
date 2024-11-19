import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  final String viewType;

  const Chart({super.key, required this.viewType});

  @override
  Widget build(BuildContext context) {
    // Get data based on view type
    List<TransectionData> data = _getChartData(viewType);

    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
           color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Income",
                  style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#8787BC"),
                  ),
                ),
                Text(
                  "Expense",
                  style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#8787BC"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "20000",
                  style: TextStyle(
                      fontSize: 25,
                      color: HexColor("#ED7D45"),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "120308",
                  style: TextStyle(
                      fontSize: 25,
                      color: HexColor("#1819A6"),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SfCartesianChart(
            // plotAreaBackgroundColor: HexColor(
            //     "#f0f0f0"), // Set the background color of the chart area
            // plotAreaBorderColor: HexColor("#D3D3D3"),
            primaryXAxis: const CategoryAxis(),
            primaryYAxis: const NumericAxis(
              isVisible: false, // Hide the Y-axis labels
            ),
            series: <ColumnSeries<TransectionData, String>>[
              // First series: Sales
              ColumnSeries<TransectionData, String>(
                borderRadius: BorderRadius.circular(10),
                color: HexColor("#ED7D45"), // Sales color
                dataSource: data,
                xValueMapper: (TransectionData data, _) => data.year,
                yValueMapper: (TransectionData data, _) => data.sales,
                name: 'Sales', // Legend name for this series
              ),
              // Second series: Expenses
              ColumnSeries<TransectionData, String>(
                color: HexColor("#0D0FA0"), // Expenses color
                borderRadius: BorderRadius.circular(10),
                dataSource: data,
                xValueMapper: (TransectionData data, _) => data.year,
                yValueMapper: (TransectionData data, _) => data.expenses,
                name: 'Expenses', // Legend name for this series
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Get chart data based on the view type (Daily, Weekly, Monthly)
  List<TransectionData> _getChartData(String viewType) {
    switch (viewType) {
      case 'Daily':
        return [
          TransectionData('Mon', 35, 20), // Sales and Expenses for each day
          TransectionData('Tue', 28, 18),
          TransectionData('Wed', 34, 22),
          TransectionData('Thu', 32, 25),
          TransectionData('Fri', 40, 30),
          TransectionData('Sat', 50, 40),
          TransectionData('Sun', 48, 38),
        ];
      case 'Weekly':
        return [
          TransectionData('Week 1', 120, 90),
          TransectionData('Week 2', 145, 100),
          TransectionData('Week 3', 160, 130),
          TransectionData('Week 4', 130, 110),
        ];
      case 'Monthly':
        return [
          TransectionData('Jan', 35, 25),
          TransectionData('Feb', 28, 22),
          TransectionData('Mar', 34, 30),
          TransectionData('Apr', 32, 28),
          TransectionData('May', 40, 35),
          TransectionData('Jun', 42, 40),
          TransectionData('Jul', 45, 42),
          TransectionData('Aug', 50, 45),
          TransectionData('Sep', 55, 50),
          TransectionData('Oct', 60, 55),
          TransectionData('Nov', 65, 60),
          TransectionData('Dec', 70, 65),
        ];
      default:
        return [];
    }
  }
}

class TransectionData {
  TransectionData(this.year, this.sales, this.expenses);
  final String year;
  final double sales;
  final double expenses;
}
