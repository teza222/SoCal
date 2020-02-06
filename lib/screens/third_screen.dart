import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:solar_calculator_flutter/card_modules/system_card.dart';
import 'package:solar_calculator_flutter/screens/report_screen.dart';

class ThirdScreen extends StatefulWidget{
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
  
  ThirdScreen({Key key,  @required this.h1, @required this.h2, @required  this.h3, @required @required this.h4, @required this.h5, @required this.h6, @required this.h7, @required this.h8, @required this.h9, @required this.h10, @required this.h11, @required this.h12,
    @required this.h13, @required this.h14, @required this.h15, @required this.h16, @required this.h17,
    @required this.w1, @required this.w2, @required this.w3, @required this.w4, @required this.w5, @required this.w6, @required this.w7, @required this.w8, @required this.w9, @required this.w10, 
    @required this.w11, @required this.w12, @required this.w13, @required this.w14, @required this.w15, @required this.w16, @required this.w17,
    @required this.q1, @required this.q2, @required this.q3, @required this.q4, @required this.q5, @required this.q6, @required this.q7, @required this.q8, @required this.q9, @required this.q10,
    @required this.q11, @required this.q12, @required this.q13, @required this.q14, @required this.q15, @required this.q16, @required this.q17}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myState2();
  }
}

class myState2 extends State<ThirdScreen> {

  List<String> cardNames = List(5);
  List<String> wattValue = List(5);
  TextEditingController panelSystem;
  TextEditingController hourChargeSystem;
  TextEditingController batteryCapacitySYSTEM;
  TextEditingController batterySystemVol;
  List<TextEditingController> wattController = List(17);
  List<TextEditingController> hourController = List(17);


  @override
  Widget build(BuildContext context) {

    myInterstitial..load();

    cardNames[0]= 'Solar Panel Power Rating';
    cardNames[1]= 'Hours Of Sunlight Per Day';
    cardNames[2]= 'Battery Capacity(AH)';
    cardNames[3]= 'Battery Bank Voltage';

    wattValue[0]= '250';
    wattValue[1]= '7';
    wattValue[2]= '225';
    wattValue[3]= '24';


    panelSystem = TextEditingController();
    hourChargeSystem= TextEditingController();
    batteryCapacitySYSTEM= TextEditingController();
    batterySystemVol= TextEditingController();
    

    return Scaffold(
      appBar: AppBar(
        title: Text('System template'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            mySystemCardWidget(cardName: cardNames[0], wattValue: wattValue[0], wattController: panelSystem),
            mySystemCardWidget(cardName: cardNames[1], wattValue: wattValue[1], wattController: hourChargeSystem),
            mySystemCardWidget(cardName: cardNames[2], wattValue: wattValue[2], wattController: batteryCapacitySYSTEM),
            mySystemCardWidget(cardName: cardNames[3], wattValue: wattValue[3], wattController: batterySystemVol),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child:  GestureDetector(
                onTap: (){
                  myInterstitial..load()..show();
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new myReport(
                          h1: widget.h1,
                          h2: widget.h2,
                          h3: widget.h3,
                          h4: widget.h4,
                          h5: widget.h5,
                          h6: widget.h6,
                          h7: widget.h7,
                          h8: widget.h8,
                          h9: widget.h9,
                          h10: widget.h10,
                          h11: widget.h11,
                          h12: widget.h12,
                          h13: widget.h13,
                          h14: widget.h14,
                          h15: widget.h15,
                          h16: widget.h16,
                          h17: widget.h17,

                          q1: widget.q1,
                          q2: widget.q2,
                          q3: widget.q3,
                          q4: widget.q4,
                          q5: widget.q5,
                          q6: widget.q6,
                          q7: widget.q7,
                          q8: widget.q8,
                          q9: widget.q9,
                          q10: widget.q10,
                          q11: widget.q11,
                          q12: widget.q12,
                          q13: widget.q13,
                          q14: widget.q14,
                          q15: widget.q15,
                          q16: widget.q16,
                          q17: widget.q17,

                          w1: widget.w1,
                          w2: widget.w2,
                          w3: widget.w3,
                          w4: widget.w4,
                          w5: widget.w5,
                          w6: widget.w6,
                          w7: widget.w7,
                          w8: widget.w8,
                          w9: widget.w9,
                          w10: widget.w10,
                          w11: widget.w11,
                          w12: widget.w12,
                          w13: widget.w13,
                          w14: widget.w14,
                          w15: widget.w15,
                          w16: widget.w16,
                          w17: widget.w17,
                          PANELSYSTEM: panelSystem.text,
                          HOURCHARGESYSTEM: hourChargeSystem.text,
                          BATTERYCAPACITYSYSTEM: batteryCapacitySYSTEM.text,
                          BATTERYVOLTAGESYSTEM: batterySystemVol.text)
                  );
                  Navigator.of(context).push(route);
                },
                child:Material(
                  color: Colors.yellow[700],
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                      height: 50.0,
                      child: Center(
                          child: Text('Next',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),)
                      )
                  ),),
              ),
            ),
            SizedBox(height: 60,)

          ],

        ),
      ),
    );
  }
  static InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: "ca-app-pub-8456206376321816/3195664286",
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );

}


