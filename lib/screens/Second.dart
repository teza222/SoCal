import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:solar_calculator_flutter/card_modules/appliance_mod.dart';
import 'package:solar_calculator_flutter/screens/third_screen.dart';
import 'package:firebase_admob/firebase_admob.dart';

class SecondScreen extends StatefulWidget{
  bool b1;
  bool b2;
  bool b3;
  bool b4;
  bool b5;
  bool b6;
  bool b7;
  bool b8;
  bool b9;
  bool b10;
  bool b11;
  bool b12;
  bool b13;
  bool b14;
  bool b15;
  bool b16;
  bool b17;

  SecondScreen({Key key, @required this.b1, @required this.b2, @required this.b3, @required this.b4, @required this.b5, @required this.b6, @required this.b7, @required this.b8, @required this.b9, @required this.b10, @required this.b11, @required this.b12, @required this.b13, @required this.b14, @required this.b15, @required this.b16, @required this.b17}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myState2();
  }
}

class myState2 extends State<SecondScreen>{
  List<String> cardNames = List(17);
  List<String> wattValue = List(17);
  List<String> quantityValue = List(17);
  List<String> hourValue = List(17);
  TextEditingController bulbCWatt;
  TextEditingController  bulbChour;
  List<TextEditingController> wattController = List(17);
  List<TextEditingController> quantityController = List(17);
  List<TextEditingController> hourController = List(17);
  String bulbWattPass = '';
  String bulbhourPass = '';

  @override
  Widget build(BuildContext context) {
    myInterstitial..load();

    // TODO: implement build
    cardNames[0]= 'Light Bulb';
    cardNames[1]= 'Clothes Iron';
    cardNames[2]= 'Television';
    cardNames[3]= 'Microwave';
    cardNames[4]= 'Computer';
    cardNames[5]= 'Refridgerator';
    cardNames[6]= 'Standing Fan';
    cardNames[7]= 'Air Conditioner';
    cardNames[8]= 'Vacuum Cleaner';
    cardNames[9]= 'Toaster';
    cardNames[10]= 'Radio';
    cardNames[11]= 'Electric Kettle';
    cardNames[12]= 'Blender';
    cardNames[13]= 'Add New';
    cardNames[14]= 'Add New';
    cardNames[15]= 'Add New';
    cardNames[16]= 'Add New';

    hourValue[0]= '5';
    hourValue[1]= '1';
    hourValue[2]= '5';
    hourValue[3]= '1';
    hourValue[4]= '2';
    hourValue[5]= '7';
    hourValue[6]= '4';
    hourValue[7]= '2';
    hourValue[8]= '1';
    hourValue[9]= '1';
    hourValue[10]= '8';
    hourValue[11]= '1';
    hourValue[12]= '1';
    hourValue[13]= '0';
    hourValue[14]= '0';
    hourValue[15]= '0';
    hourValue[16]= '0';

    wattValue[0]= '20';
    wattValue[1]= '1100';
    wattValue[2]= '75';
    wattValue[3]= '1200';
    wattValue[4]= '250';
    wattValue[5]= '400';
    wattValue[6]= '75';
    wattValue[7]= '2000';
    wattValue[8]= '1500';
    wattValue[9]= '1100';
    wattValue[10]= '35';
    wattValue[11]= '1200';
    wattValue[12]= '300';
    wattValue[13]= '0';
    wattValue[14]= '0';
    wattValue[15]= '0';
    wattValue[16]= '0';
   
    quantityValue[0]= '3';
    quantityValue[1]= '1';
    quantityValue[2]= '1';
    quantityValue[3]= '1';
    quantityValue[4]= '1';
    quantityValue[5]= '1';
    quantityValue[6]= '1';
    quantityValue[7]= '1';
    quantityValue[8]= '1';
    quantityValue[9]= '1';
    quantityValue[10]= '1';
    quantityValue[11]= '1';
    quantityValue[12]= '1';
    quantityValue[13]= '1';
    quantityValue[14]= '1';
    quantityValue[15]= '1';
    quantityValue[16]= '1';
    

    wattController[0]= TextEditingController();
    wattController[1]= TextEditingController();
    wattController[2]= TextEditingController();
    wattController[3]= TextEditingController();
    wattController[4]= TextEditingController();
    wattController[5]= TextEditingController();
    wattController[6]= TextEditingController();
    wattController[7]= TextEditingController();
    wattController[8]= TextEditingController();
    wattController[9]= TextEditingController();
    wattController[10]= TextEditingController();
    wattController[11]= TextEditingController();
    wattController[12]= TextEditingController();
    wattController[13]= TextEditingController();
    wattController[14]= TextEditingController();
    wattController[15]= TextEditingController();
    wattController[16]= TextEditingController();
    
    hourController[0]= TextEditingController();
    hourController[1]= TextEditingController();
    hourController[2]= TextEditingController();
    hourController[3]= TextEditingController();
    hourController[4]= TextEditingController();
    hourController[5]= TextEditingController();
    hourController[6]= TextEditingController();
    hourController[7]= TextEditingController();
    hourController[8]= TextEditingController();
    hourController[9]= TextEditingController();
    hourController[10]= TextEditingController();
    hourController[11]= TextEditingController();
    hourController[12]= TextEditingController();
    hourController[13]= TextEditingController();
    hourController[14]= TextEditingController();
    hourController[15]= TextEditingController();
    hourController[16]= TextEditingController();

    quantityController[0]= TextEditingController();
    quantityController[1]= TextEditingController();
    quantityController[2]= TextEditingController();
    quantityController[3]= TextEditingController();
    quantityController[4]= TextEditingController();
    quantityController[5]= TextEditingController();
    quantityController[6]= TextEditingController();
    quantityController[7]= TextEditingController();
    quantityController[8]= TextEditingController();
    quantityController[9]= TextEditingController();
    quantityController[10]= TextEditingController();
    quantityController[11]= TextEditingController();
    quantityController[12]= TextEditingController();
    quantityController[13]= TextEditingController();
    quantityController[14]= TextEditingController();
    quantityController[15]= TextEditingController();
    quantityController[16]= TextEditingController();


    return Scaffold(
        appBar: AppBar(
          title: Text('Config'),
        ),

        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              myCardWidget(cardName: cardNames[0], wattValue: wattValue[0], hourValue: hourValue[0], isShowing: widget.b1, wattController: wattController[0], hourController: hourController[0], quantityValue: quantityValue[0], quantityController: quantityController[0],),
              myCardWidget(cardName: cardNames[1], wattValue: wattValue[1], hourValue: hourValue[1], isShowing: widget.b2, wattController: wattController[1], hourController: hourController[1], quantityValue: quantityValue[1], quantityController: quantityController[1]),
              myCardWidget(cardName: cardNames[2], wattValue: wattValue[2], hourValue: hourValue[2], isShowing: widget.b3, wattController: wattController[2], hourController: hourController[2], quantityValue: quantityValue[2], quantityController: quantityController[2]),
              myCardWidget(cardName: cardNames[3], wattValue: wattValue[3], hourValue: hourValue[3], isShowing: widget.b4, wattController: wattController[3], hourController: hourController[3], quantityValue: quantityValue[3], quantityController: quantityController[3]),
              myCardWidget(cardName: cardNames[4], wattValue: wattValue[4], hourValue: hourValue[4], isShowing: widget.b5, wattController: wattController[4], hourController: hourController[4], quantityValue: quantityValue[4], quantityController: quantityController[4]),
              myCardWidget(cardName: cardNames[5], wattValue: wattValue[5], hourValue: hourValue[5], isShowing: widget.b6, wattController: wattController[5], hourController: hourController[5], quantityValue: quantityValue[5], quantityController: quantityController[5]),
              myCardWidget(cardName: cardNames[6], wattValue: wattValue[6], hourValue: hourValue[6], isShowing: widget.b7, wattController: wattController[6], hourController: hourController[6], quantityValue: quantityValue[6], quantityController: quantityController[6]),
              myCardWidget(cardName: cardNames[7], wattValue: wattValue[7], hourValue: hourValue[7], isShowing: widget.b8, wattController: wattController[7], hourController: hourController[7], quantityValue: quantityValue[7], quantityController: quantityController[7]),
              myCardWidget(cardName: cardNames[8], wattValue: wattValue[8], hourValue: hourValue[8], isShowing: widget.b9, wattController: wattController[8], hourController: hourController[8], quantityValue: quantityValue[8], quantityController: quantityController[8]),
              myCardWidget(cardName: cardNames[9], wattValue: wattValue[9], hourValue: hourValue[9], isShowing: widget.b10, wattController: wattController[9], hourController: hourController[9], quantityValue: quantityValue[9], quantityController: quantityController[9]),
              myCardWidget(cardName: cardNames[10], wattValue: wattValue[10], hourValue: hourValue[10], isShowing: widget.b11, wattController: wattController[10], hourController: hourController[10], quantityValue: quantityValue[10], quantityController: quantityController[10]),
              myCardWidget(cardName: cardNames[11], wattValue: wattValue[11], hourValue: hourValue[11], isShowing: widget.b12, wattController: wattController[11], hourController: hourController[11], quantityValue: quantityValue[11], quantityController: quantityController[11]),
              myCardWidget(cardName: cardNames[12], wattValue: wattValue[12], hourValue: hourValue[12], isShowing: widget.b13, wattController: wattController[12], hourController: hourController[12], quantityValue: quantityValue[12], quantityController: quantityController[12]),
              myCardWidget(cardName: cardNames[13], wattValue: wattValue[13], hourValue: hourValue[13], isShowing: widget.b14, wattController: wattController[13], hourController: hourController[13], quantityValue: quantityValue[13], quantityController: quantityController[13]),
              myCardWidget(cardName: cardNames[14], wattValue: wattValue[14], hourValue: hourValue[14], isShowing: widget.b15, wattController: wattController[14], hourController: hourController[14], quantityValue: quantityValue[14], quantityController: quantityController[14]),
              myCardWidget(cardName: cardNames[15], wattValue: wattValue[15], hourValue: hourValue[15], isShowing: widget.b16, wattController: wattController[15], hourController: hourController[15], quantityValue: quantityValue[15], quantityController: quantityController[15]),
              myCardWidget(cardName: cardNames[16], wattValue: wattValue[16], hourValue: hourValue[16], isShowing: widget.b17, wattController: wattController[16], hourController: hourController[16], quantityValue: quantityValue[16], quantityController: quantityController[16]),
              Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: GestureDetector(
                  onTap: (){
                    myInterstitial..show();
                    var route = new MaterialPageRoute(
                        builder:(BuildContext context) => new ThirdScreen(
                            h1: hourController[0].text,
                            h2: hourController[1].text, h3: hourController[2].text,
                            h4: hourController[3].text, h5: hourController[4].text, h6: hourController[5].text, h7: hourController[6].text, h8: hourController[7].text,
                            h9: hourController[8].text, h10: hourController[9].text, h11: hourController[10].text, h12: hourController[11].text,
                            h13: hourController[12].text, h14: hourController[13].text, h15: hourController[14].text, h16: hourController[15].text,
                            h17: hourController[16].text,
                            w1: wattController[0].text,
                            w2: wattController[1].text, w3: wattController[2].text, w4: wattController[3].text, w5: wattController[4].text,
                            w6: wattController[5].text, w7: wattController[6].text, w8: wattController[7].text, w9: wattController[8].text, w10: wattController[9].text,
                            w11: wattController[10].text, w12: wattController[11].text, w13: wattController[12].text, w14: wattController[13].text, w15: wattController[14].text,
                            w16: wattController[15].text, w17: wattController[16].text,
                            q1: quantityController[0].text,
                            q2: quantityController[1].text, q3: quantityController[2].text, q4: quantityController[3].text, q5: quantityController[4].text,
                            q6: quantityController[5].text, q7: quantityController[6].text, q8: quantityController[7].text, q9: quantityController[8].text, q10: quantityController[9].text,
                            q11: quantityController[10].text, q12: quantityController[11].text, q13: quantityController[12].text, q14: quantityController[13].text, q15: quantityController[14].text,
                            q16: quantityController[15].text, q17: quantityController[16].text)
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
              Container(height: 60.0,),
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



