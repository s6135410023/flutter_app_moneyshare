import 'package:flutter/material.dart';

class MoneyShareUI extends StatefulWidget {
  double money = 0;
  int person = 0;
  double tip = 0;
  double moneyshare = 0;

  MoneyShareUI({
    Key? key,
    required this.money,
    required this.person,
    required this.tip,
    required this.moneyshare,
  }) : super(key: key);

  @override
  _MoneyShareUIState createState() => _MoneyShareUIState();
}

class _MoneyShareUIState extends State<MoneyShareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          'ผลการแชร์เงิน',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 100.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'จำนวนเงินที่จะหาร',
              ),
              Text(
                widget.money.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'จำนวณคนที่จะหาร',
              ),
              Text(
                widget.person.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'คน',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'จำนวนเงินทิป',
              ),
              Text(
                widget.tip.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'หารกันคนละ',
              ),
              Container(
                color: Colors.yellow,
                width: MediaQuery.of(context).size.width - 80.0,
                padding: EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                ),
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.moneyshare.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Text(
                'บาท',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
