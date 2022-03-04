import 'package:cakemoney/utils/platform_info.dart';
import 'package:cakemoney/widgets/pie_chart_page.dart';
import 'package:flutter/material.dart';
import 'package:cakemoney/screens/home.dart';
import 'package:provider/provider.dart';
import 'model/wallet.dart';
import 'model/movement.dart';
import 'package:cakemoney/widgets/esempiPieChart/pie_chart_sample1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Wallet()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            // title: 'CakeMoney',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            // home: const MyHomePage(title: 'CakeMoney'),
            home: MyHomePage(title: 'Zebbi',)));
  }
}
class PieChartPage extends StatelessWidget {
  final Color barColor = Colors.white;
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final double width = 22;

  const PieChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffeceaeb),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: const <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Russia STRONG',
                  style: TextStyle(
                      color: Color(
                        0xff333333,
                      ),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            PieChartSample1(),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}