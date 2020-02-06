import 'package:flutter/material.dart';


class mySystemCardWidget extends StatelessWidget{
  String wattValue;
  String cardName;
  TextEditingController wattController;

  mySystemCardWidget({@required this.cardName, @required this.wattValue,  @required this.wattController});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _clothesIron();
  }
  Widget _clothesIron() {
      return Material(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 150.0,
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
                    child: Icon(Icons.verified_user,color: Colors.yellow[700], size: 80.0,),
                  ),
                ),

                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10.0, right: 5.0),
                        child: Text(cardName,
                          style: TextStyle(
                              fontSize: 13.0,
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
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      );

  }
}



