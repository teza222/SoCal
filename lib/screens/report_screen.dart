import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:launch_review/launch_review.dart';


class myReport extends StatefulWidget {
   String h1;
   String h2;
   String h3;
   String h4;
   String h5;
   String h6;
   String h7;
   String h8;
   String h9;
   String h10;
   String h11;
   String h12;
   String h13;
   String h14;
   String h15;
   String h16;
   String h17;

   String w1;
   String w2;
   String w3;
   String w4;
   String w5;
   String w6;
   String w7;
   String w8;
   String w9;
   String w10;
   String w11;
   String w12;
   String w13;
   String w14;
   String w15;
   String w16;
   String w17; 
   
   String q1;
   String q2;
   String q3;
   String q4;
   String q5;
   String q6;
   String q7;
   String q8;
   String q9;
   String q10;
   String q11;
   String q12;
   String q13;
   String q14;
   String q15;
   String q16;
   String q17;

   String PANELSYSTEM;
   String HOURCHARGESYSTEM;
   String BATTERYCAPACITYSYSTEM;
   String BATTERYVOLTAGESYSTEM;

  myReport({Key key,  @required this.h1, @required this.h2, @required  this.h3, @required @required this.h4, @required this.h5, @required this.h6, @required this.h7, @required this.h8, @required this.h9, @required this.h10, @required this.h11, @required this.h12,
    @required this.h13, @required this.h14, @required this.h15, @required this.h16, @required this.h17, @required this.q1, @required this.q2, @required  this.q3, @required @required this.q4, @required this.q5, @required this.q6, @required this.q7, @required this.q8, @required this.q9, @required this.q10, @required this.q11, @required this.q12,
    @required this.q13, @required this.q14, @required this.q15, @required this.q16, @required this.q17,
    @required this.w1, @required this.w2, @required this.w3, @required this.w4, @required this.w5, @required this.w6, @required this.w7, @required this.w8, @required this.w9, @required this.w10,
    @required this.w11, @required this.w12, @required this.w13, @required this.w14, @required this.w15, @required this.w16, @required this.w17, @required this.PANELSYSTEM, @required this.HOURCHARGESYSTEM, @required this.BATTERYCAPACITYSYSTEM, @required this.BATTERYVOLTAGESYSTEM}) : super(key: key);

  @override
  _myReportState createState() => _myReportState();
}

class _myReportState extends State<myReport> {
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];


  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    //parse the string to int
    int bulbTotal = 0;
    int clothesTotal = 0;
    int televisionTotal = 0;
    int microwaveTotal = 0;
    int computerTotal = 0;
    int refridgeratorTotal = 0;
    int standingFanTotal = 0;
    int airConTotal = 0;
    int vacuumCleanerTotal = 0;
    int toasterTotal = 0;
    int radioTotal = 0;
    int electrickettleTotal = 0;
    int blenderTotal = 0;
    int custom1Total = 0;
    int custom2Total = 0;
    int custom3Total = 0;
    int custom4Total = 0;

    int panelSystemValue = 250;
    int hourSystemValue = 7;
    int batteyCapacitySystemValue = 225;
    int batteryVoltageystemValue = 24;

    int app1 = 0;
    int app2 = 0;
    int app3 = 0;
    int app4 = 0;
    int app5 = 0;
    int app6 = 0;
    int app7 = 0;
    int app8 = 0;
    int app9 = 0;
    int app10 = 0;
    int app11 = 0;
    int app12 = 0;
    int app13 = 0;
    int app14 = 0;
    int app15 = 0;
    int app16 = 0;
    int app17 = 0;



    // Checking if Appliance Values are not empty and updating them
    if(widget.w1.isNotEmpty) {
      app1 = int.parse(widget.w1);
      int quantity1 = int.parse(widget.q1);
      int hours1 = int.parse(widget.h1);
      bulbTotal = (app1 * quantity1) * hours1;
    }
    if(widget.w2.isNotEmpty) {
      app2 = int.parse(widget.w2);
      int quantity2 = int.parse(widget.q2);
      int hours2 = int.parse(widget.h2);
      clothesTotal = (app2 * quantity2) * hours2;
    }
    if(widget.w3.isNotEmpty) { 
      app3 = int.parse(widget.w3);
      int quantity3 = int.parse(widget.q3);
      int hours3 = int.parse(widget.h3);
      televisionTotal = (app3 * quantity3) * hours3;
    }
    if(widget.w4.isNotEmpty) {
      app4 = int.parse(widget.w4);
      int quantity4 = int.parse(widget.q4);
      int hours4 = int.parse(widget.h4);
      microwaveTotal = (app4 * quantity4) * hours4;
    }
    if(widget.w5.isNotEmpty) {
      app5 = int.parse(widget.w5);
      int quantity5 = int.parse(widget.q5);
      int hours5 = int.parse(widget.h5);
      computerTotal = (app5 *quantity5) * hours5;
    }
    if(widget.w6.isNotEmpty) {
      app6 = int.parse(widget.w6);
      int quantity6 = int.parse(widget.q6);
      int hours6 = int.parse(widget.h6);
      refridgeratorTotal = (app6 * quantity6) * hours6;
    }
    if(widget.w7.isNotEmpty) {
      app7 = int.parse(widget.w7);
      int quantity7 = int.parse(widget.q7);
      int hours7 = int.parse(widget.h7);
      standingFanTotal = (app7 * quantity7) * hours7;
    }
    if(widget.w8.isNotEmpty) {
      app8 = int.parse(widget.w8);
      int quantity8 = int.parse(widget.q8);
      int hours8 = int.parse(widget.h8);
      airConTotal = (app8 * quantity8) * hours8;
    }
    if(widget.w9.isNotEmpty) {
      app9 = int.parse(widget.w9);
      int quantity9 = int.parse(widget.q9);
      int hours9 = int.parse(widget.h9);
      vacuumCleanerTotal = (app9 * quantity9) * hours9;
    }
    if(widget.w10.isNotEmpty) {
      app10 = int.parse(widget.w10);
      int quantity10 = int.parse(widget.q10);
      int hours10 = int.parse(widget.h10);
      toasterTotal = (app10 * quantity10) * hours10;
    }
    if(widget.w11.isNotEmpty) {
      app11 = int.parse(widget.w11);
      int quantity11 = int.parse(widget.q11);
      int hours11 = int.parse(widget.h11);
      radioTotal = (app11 * quantity11) * hours11;
    }
    if(widget.w12.isNotEmpty) {
      app12 = int.parse(widget.w12);
      int quantity12 = int.parse(widget.q12);
      int hours12 = int.parse(widget.h12);
      electrickettleTotal = (app12 * quantity12) * hours12;
    }
    if(widget.w13.isNotEmpty) {
      app13 = int.parse(widget.w13);
      int quantity13 = int.parse(widget.q13);
      int hours13 = int.parse(widget.h13);
      blenderTotal = (app13 * quantity13) * hours13;
    }
    if(widget.w14.isNotEmpty) {
      app14 = int.parse(widget.w14);
      int quantity14 = int.parse(widget.q14);
      int hours14 = int.parse(widget.h14);
      custom1Total = (app14 * quantity14) * hours14;
    }
    if(widget.w15.isNotEmpty) {
      app15 = int.parse(widget.w15);
      int quantity15 = int.parse(widget.q15);
      int hours15 = int.parse(widget.h15);
      custom2Total = (app15 * quantity15) * hours15;
    }
    if(widget.w16.isNotEmpty) {
      app16 = int.parse(widget.w16);
      int quantity16 = int.parse(widget.q16);
      int hours16 = int.parse(widget.h16);
      custom3Total = (app16 * quantity16) * hours16;
    }
    if(widget.w17.isNotEmpty) {
      app17 = int.parse(widget.w17);
      int quantity17 = int.parse(widget.q17);
      int hours17 = int.parse(widget.h17);
      custom4Total = (app17 * quantity17) * hours17;
    }

    // Checking if System Values are not empty and updating them
    if(widget.PANELSYSTEM.isNotEmpty) {
      panelSystemValue = int.parse(widget.PANELSYSTEM);
    }
    if(widget.HOURCHARGESYSTEM.isNotEmpty) {
      hourSystemValue = int.parse(widget.HOURCHARGESYSTEM);
    }
    if(widget.BATTERYCAPACITYSYSTEM.isNotEmpty) {
      batteyCapacitySystemValue = int.parse(widget.BATTERYCAPACITYSYSTEM);
    }
    if(widget.BATTERYVOLTAGESYSTEM.isNotEmpty) {
      batteryVoltageystemValue = int.parse(widget.BATTERYVOLTAGESYSTEM);
    }


    //calculating the total for day
    int GRAND_TOTAL = bulbTotal + clothesTotal + televisionTotal + microwaveTotal + computerTotal + refridgeratorTotal
        + standingFanTotal + airConTotal + vacuumCleanerTotal + toasterTotal + radioTotal + electrickettleTotal + blenderTotal
        + custom1Total + custom2Total + custom3Total + custom4Total;

    //calculating the total for the week
    double WEEK_GRAND_TOTAL = (GRAND_TOTAL * 7)/1000;

    // calculating the number of panels
    int onePanel = panelSystemValue * hourSystemValue;
    double amountOfPanel = (GRAND_TOTAL / onePanel);
    int TOTAL_PANEL = amountOfPanel.round();

    // calculating the number of batteries needed
    double convertedToAmps = (GRAND_TOTAL / batteryVoltageystemValue);
    double batteryAmp = convertedToAmps / batteyCapacitySystemValue + 0.2;
    double batterySixVolts = (batteryVoltageystemValue / 6) * batteryAmp;
    int TOTAL_BATTERY = batterySixVolts.round();

    if(TOTAL_BATTERY == 1){
      if(batteryVoltageystemValue < 13){
        TOTAL_BATTERY = 2;
      }else{
        TOTAL_BATTERY = 4;
      }
    }
    if(TOTAL_BATTERY == 2){
      if(batteryVoltageystemValue < 13){
        TOTAL_BATTERY = 2;
      }else{
        TOTAL_BATTERY = 4;
      }
    }
    if(TOTAL_BATTERY == 3){
      if(batteryVoltageystemValue < 13){
        TOTAL_BATTERY = 2;
      }else{
        TOTAL_BATTERY = 4;
      }
    }
    if(TOTAL_PANEL == 0){
      TOTAL_PANEL = 1;
    }

    //calculating inverter size
    int INVERTER_SIZE = app1+ app2+ app3+ app4+ app5+ app6+ app7+ app8+ app9+ app10+ app11+ app12+ app13+ app14+ app15+ app16+ app17;

    //calculating the charge controller ratings
    int chargeUnitMulti = panelSystemValue * TOTAL_PANEL;
    double chargeUnitDecimal = chargeUnitMulti / batteryVoltageystemValue;
    int CHARGE_CONTROLLER = chargeUnitDecimal.round();

    //calculating the sections in chart
    int s1 =  app1+ app2+ app3+ app16+ app4;
    double SECTION1 = s1 /1;
    int s2 =  app5+ app6+ app7+ app15+ app8+ app17;
    double SECTION2 = s2 /1;
    int s3 =  app9+ app10+ app11+ app14+ app12;
    double SECTION3 = s3 /1;
    int s4 =  app9+ app10+ app11+ app12+ app13;
    double SECTION4= s4 /1;

    dataMap.putIfAbsent("Category 1", () => SECTION1);
    dataMap.putIfAbsent("Category 2", () => SECTION2);
    dataMap.putIfAbsent("Category 3", () => SECTION3);
    dataMap.putIfAbsent("Category 4", () => SECTION4);

    return Scaffold(
      appBar: AppBar(
        title: Text('Report'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
        Container(
          height: 200.0,
          child: Material(
            color: Colors.white,
            elevation: 20.0,
            borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 4,),

                    PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width / 2.5,
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: false,
                      chartValueBackgroundColor: Colors.white,
                      colorList: colorList,
                      showLegends: true,
                      legendPosition: LegendPosition.right,
                      decimalPlaces: 1,
                      showChartValueLabel: true,
                      initialAngle: 0,
                      chartValueStyle: defaultChartValueStyle.copyWith(
                        color: Colors.blueGrey[900].withOpacity(0.9),
                      ),
                      chartType: ChartType.disc,
                    ),
                    Text('',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent,
                        decoration: TextDecoration.underline,
//                        decorationStyle: TextDecorationStyle.double,
//                        decorationColor: Colors.blue,
//                        decorationThickness: 1,
                      ),),

                  ],
                ),
              ),
        ),
            SizedBox(height: 16.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 150.0,
                    child: Material(
                      color: Colors.white,
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Spacer(flex: 1,),
                                  Center(
                                    child: Text('Today\'s Estimate',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Roboto',
                                          fontStyle: FontStyle.italic
                                      ),),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Center(
                                    child: Text('$GRAND_TOTAL',
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        fontFamily: 'Breve',
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                  Center(
                                    child: Text('Watts',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontFamily: 'Roboto',
                                          fontStyle: FontStyle.italic
                                      ),),
                                  ),
                                  SizedBox(height: 20.0,),

                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0,),

                Expanded(
                  child: Container(
                    height: 150.0,
                    child: Material(
                      color: Colors.white,
                      elevation: 20.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Spacer(flex: 1,),
                                  Center(
                                    child: Text('Weekly Estimate',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Roboto',
                                          fontStyle: FontStyle.italic
                                      ),),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Center(
                                    child: Text('$WEEK_GRAND_TOTAL',
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        fontFamily: 'Breve',
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                  Center(
                                    child: Text('Kwh',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontFamily: 'Roboto',
                                          fontStyle: FontStyle.italic
                                      ),),
                                  ),
                                  SizedBox(height: 20.0,),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 150.0,
              child: Material(
                color: Colors.white,
                elevation: 20.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 1,),
                            Center(
                              child: Text('Solar Panels' ,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 10.0,),
                            Center(
                              child: Text('$TOTAL_PANEL',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: 'Breve',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Center(
                              child: Text('$panelSystemValue Watts',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 150.0,
              child: Material(
                color: Colors.white,
                elevation: 20.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 1,),
                            Center(
                              child: Text('Batteries',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 10.0,),
                            Center(
                              child: Text('$TOTAL_BATTERY',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: 'Breve',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Center(
                              child: Text('$batteyCapacitySystemValue Ah, 6v Batteries ',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 150.0,
              child: Material(
                color: Colors.white,
                elevation: 20.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 1,),
                            Center(
                              child: Text('Inverter',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 10.0,),
                            Center(
                              child: Text('$INVERTER_SIZE',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: 'Breve',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Center(
                              child: Text('Watts',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 150.0,
              child: Material(
                color: Colors.white,
                elevation: 20.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 1,),
                            Center(
                              child: Text('Chargie Controller',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 10.0,),
                            Center(
                              child: Text('$CHARGE_CONTROLLER',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: 'Breve',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Center(
                              child: Text('Amps',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 150.0,
              child: Material(
                color: Colors.white,
                elevation: 20.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 1,),
                            Center(
                              child: Text('System Efficiency',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                            SizedBox(height: 10.0,),
                            Center(
                              child: Text('80',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontFamily: 'Breve',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Center(
                              child: Text('Percentage',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.italic
                                ),),
                            ),

                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: GestureDetector(
                onTap: (){
                  LaunchReview.launch();
                  LaunchReview.launch(androidAppId: "com.jamnewslink.exsolar.solarcalculatorpro",
                      iOSAppId: "8475849");
                },
                child:Material(
                  color: Colors.yellow[700],
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                      height: 50.0,
                      child: Center(
                          child: Text('Remove Ads',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),)
                      )
                  ),),
              ),
            ),

            SizedBox(
              height: 60.0,
            )

          ],
        )
      )
    );
  }

}

