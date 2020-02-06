import 'package:flutter/material.dart';


class myCardWidget extends StatelessWidget{
  String wattValue;
  String hourValue;
  String quantityValue;
  String cardName;
  bool isShowing;
  TextEditingController wattController;
  TextEditingController quantityController;
  TextEditingController hourController;

  myCardWidget({@required this.cardName, @required this.wattValue, @required this.hourValue, @required this.quantityValue, @required this.isShowing, @required this.wattController, @required this.hourController, @required this.quantityController});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _clothesIron();
  }
  Widget _clothesIron() {
    if (isShowing == true) {
      return Material(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 250.0,
          width: 400.0,
          child: Material(
            color: Colors.blue[700],
            elevation: 10.0,
            borderRadius: BorderRadius.circular(15.0),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.settings,color: Colors.yellow[700], size: 100.0,),
                  ),
                ),

                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(cardName,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                              controller: wattController..text = wattValue,
                              onChanged: (wattValue) => {},
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Watts',
                                  hintText: 'Power rating e.g $wattValue watts',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)
                                  )
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:TextField(
                              controller: quantityController..text = quantityValue,
                              onChanged: (text) => {},
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Quantity',
                                  hintText: '1',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)
                                  )
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:TextField(
                              controller: hourController..text = hourValue,
                              onChanged: (text) => {},
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Hours',
                                  hintText: 'Hours of use per day',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)
                                  )
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),

                        ),
                      ),
                    ],
                  ),
                ),




              ],
            ),
          ),
        ),
      );
    } else {
      return new Container();
    }
  }
}



