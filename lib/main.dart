
import 'package:flutter/material.dart';
import 'package:solar_calculator_flutter/screens/Second.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:solar_calculator_flutter/screens/privacy_policy.dart';

void main() {
  runApp(new firstWidget());
}

class firstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Solar Calculator",
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new myState();
  }
}

class myState extends State<myHome> {
  var divider = 4.0;

  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;
  bool b6 = false;
  bool b7 = false;
  bool b8 = false;
  bool b9 = false;
  bool b10 = false;
  bool b11 = false;
  bool b12 = false;
  bool b13 = false;
  bool b14 = false;
  bool b15 = false;
  bool b16 = false;
  bool b17 = false;

  AssetImage assetImage = AssetImage('images/solarcover.gif');


  @override
  Widget build(BuildContext context) {
    //setting up ad loads
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-8456206376321816~7156689085');
    myBanner..load()..show();
    myInterstitial..load();
    return (Scaffold(
      appBar: AppBar(
        title: Text('Solar Calculator'),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.description),
            onPressed: () {
              var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new myPolicy());
                  Navigator.of(context).push(route);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Image(image: assetImage, width: 400.0, height: 250.0)),
            Container(
              height: 340.0,
              child: ListView(
                children: <Widget>[
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b1 == false) {
                            b1 = true;
                          } else {
                            b1 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Light Bulb',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b1,
                        onChanged: (bool value) {
                          setState(() {
                            if (b1 == false) {
                              b1 = true;
                            } else {
                              b1 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b2 == false) {
                            b2 = true;
                          } else {
                            b2 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Clothes Iron',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b2,
                        onChanged: (bool value) {
                          setState(() {
                            if (b2 == false) {
                              b2 = true;
                            } else {
                              b2 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b3 == false) {
                            b3 = true;
                          } else {
                            b3 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Television',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b3,
                        onChanged: (bool value) {
                          setState(() {
                            if (b3 == false) {
                              b3 = true;
                            } else {
                              b3 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b4 == false) {
                            b4 = true;
                          } else {
                            b4 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Microwave',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b4,
                        onChanged: (bool value) {
                          setState(() {
                            if (b4 == false) {
                              b4 = true;
                            } else {
                              b4 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b5 == false) {
                            b5 = true;
                          } else {
                            b5 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Computer',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b5,
                        onChanged: (bool value) {
                          setState(() {
                            if (b5 == false) {
                              b5 = true;
                            } else {
                              b5 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b6 == false) {
                            b6 = true;
                          } else {
                            b6 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Refridgerator',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b6,
                        onChanged: (bool value) {
                          setState(() {
                            if (b6 == false) {
                              b6 = true;
                            } else {
                              b6 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b7 == false) {
                            b7 = true;
                          } else {
                            b7 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Standing fan',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b7,
                        onChanged: (bool value) {
                          setState(() {
                            if (b7 == false) {
                              b7 = true;
                            } else {
                              b7 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b8 == false) {
                            b8 = true;
                          } else {
                            b8 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Air Conditioner',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b8,
                        onChanged: (bool value) {
                          setState(() {
                            if (b8 == false) {
                              b8 = true;
                            } else {
                              b8 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b9 == false) {
                            b9 = true;
                          } else {
                            b9 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Vacuum Cleaner',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b9,
                        onChanged: (bool value) {
                          setState(() {
                            if (b9 == false) {
                              b9 = true;
                            } else {
                              b9 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b10 == false) {
                            b10 = true;
                          } else {
                            b10 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Toaster',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b10,
                        onChanged: (bool value) {
                          setState(() {
                            if (b10 == false) {
                              b10 = true;
                            } else {
                              b10 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b11 == false) {
                            b11 = true;
                          } else {
                            b11 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Radio',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b11,
                        onChanged: (bool value) {
                          setState(() {
                            if (b11 == false) {
                              b11 = true;
                            } else {
                              b11 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b12 == false) {
                            b12 = true;
                          } else {
                            b12 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Electric Kettle',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b12,
                        onChanged: (bool value) {
                          setState(() {
                            if (b12 == false) {
                              b12 = true;
                            } else {
                              b12 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b13 == false) {
                            b13 = true;
                          } else {
                            b13 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Blender',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b13,
                        onChanged: (bool value) {
                          setState(() {
                            if (b13 == false) {
                              b13 = true;
                            } else {
                              b13 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b14 == false) {
                            b14 = true;
                          } else {
                            b14 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Add New',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b14,
                        onChanged: (bool value) {
                          setState(() {
                            if (b14 == false) {
                              b14 = true;
                            } else {
                              b14 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b15 == false) {
                            b15 = true;
                          } else {
                            b15 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Add New',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b15,
                        onChanged: (bool value) {
                          setState(() {
                            if (b15 == false) {
                              b15 = true;
                            } else {
                              b15 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b16 == false) {
                            b16 = true;
                          } else {
                            b16 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Add New',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b16,
                        onChanged: (bool value) {
                          setState(() {
                            if (b16 == false) {
                              b16 = true;
                            } else {
                              b16 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: divider,
                  ),
                  Material(
                    color: Colors.blue[700],
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (b17 == false) {
                            b17 = true;
                          } else {
                            b17 = false;
                          }
                        });
                      },
                      leading: Icon(
                        Icons.power,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        'Add New',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.yellow,
                        value: b17,
                        onChanged: (bool value) {
                          setState(() {
                            if (b17 == false) {
                              b17 = true;
                            } else {
                              b17 = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:  GestureDetector(
                  onTap: (){
                    myInterstitial..load()..show();
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new SecondScreen(b1: b1, b2: b2, b3: b3, b4: b4, b5: b5, b6: b6, b7: b7, b8: b8, b9: b9, b10: b10, b11: b11, b12: b12, b13: b13, b14: b14, b15: b15, b16: b16, b17: b17));
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
                  Container(
                    height: 60.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  BannerAd myBanner = new BannerAd(
    adUnitId: "ca-app-pub-8456206376321816/8633422285",
    size: AdSize.smartBanner,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  InterstitialAd myInterstitial = new InterstitialAd(
    adUnitId: "ca-app-pub-8456206376321816/3195664286",
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );


}

Widget myCover() {
  AssetImage assetImage = AssetImage('images/reportdaily.png');
  Image image = Image(image: assetImage, width: 450.0, height: 450.0);
  return image;
}


