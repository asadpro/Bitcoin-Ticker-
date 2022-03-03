import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  Object? dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.only(bottom: 30.0),
            child: DropdownButton(
              iconSize: 34,
              value: dropDownValue,
              dropdownColor: Colors.deepPurple[300],
              icon: Icon(Icons.arrow_drop_down_circle_rounded),
              items: const [
                DropdownMenuItem(
                  child: Text('USD'),
                  value: Text('USD'),
                ),
                DropdownMenuItem(
                  child: Text('GBP'),
                  value: Text('GBP'),
                ),
                DropdownMenuItem(
                  child: Text('PKR'),
                  value: Text('PKR'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  dropDownValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
