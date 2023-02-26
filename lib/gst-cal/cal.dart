import 'package:flutter/material.dart';

class hyy extends StatefulWidget {
  const hyy({Key? key}) : super(key: key);

  @override
  State<hyy> createState() => _hyyState();
}

class _hyyState extends State<hyy> {
  TextEditingController txtno = TextEditingController();
  double b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // enter the no
          TextField(
            controller: txtno,
          ),
          //3% ,5%,7%
          Row(
            children: [
              Container(
                height: 20,
                width: 50,
                //child: Text('3%'),
              ),
              ElevatedButton(
                  onPressed: () {
                    String birth = txtno.text;
                    double a = double.parse(birth);
                    b = a * 0.03;
                    setState(() {});
                  },
                  child: Text("3%")),
              Container(
                height: 20,
                width: 50,
                //child: Text("5%"),
              ),
              ElevatedButton(
                  onPressed: () {
                    String birth = txtno.text;
                    double a = double.parse(birth);
                    b = a * 0.05;
                    setState(() {});
                  },
                  child: Text("5%")),
              ElevatedButton(
                  onPressed: () {
                    String birth = txtno.text;
                    double a = double.parse(birth);
                    b = a * 0.12;
                    setState(() {});
                  },
                  child: Text("12%")),
              ElevatedButton(
                  onPressed: () {
                    String birth = txtno.text;
                    double a = double.parse(birth);
                    b = a * 0.18;
                    setState(() {});
                  },
                  child: Text("18%")),
              ElevatedButton(
                  onPressed: () {
                    String birth = txtno.text;
                    double a = double.parse(birth);
                    b = a * 0.28;
                    setState(() {});
                  },
                  child: Text("28%")),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Text("$b");
                });
              },
              child: Text("sumil")),
          // final peice
          Row(
            children: [
              Container(
                height: 50,
                width: 60,
                child: Text("F"),
              ),
              Container(
                height: 50,
                width: 100,
                child: Text("Final price"),
              ),
            ],
          ),
          Text("${b.toInt()}"),
          SizedBox(height: 20),
          //no 1 to 9
          Container(
            height: 300,
            width: 200,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      no(7),
                      no(8),
                      no(9),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      no(4),
                      no(5),
                      no(6),
                      Container(
                        height: 35,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffFF6B00),
                        ),
                        child: Text('Ac'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      no(1),
                      no(2),
                      no(3),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Color(000252427),
                        child: Text('00'),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Color(000252427),
                        child: Text('0'),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: Color(000252427),
                        child: Text('.'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget no(int num) {
    return Container(
      height: 20,
      width: 20,
      color: Color(000252427),
      child: Text('$num'),
    );
  }
}
