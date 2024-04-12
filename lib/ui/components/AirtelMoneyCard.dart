import 'package:flutter/material.dart';

class AirtelMoneyCard extends StatefulWidget {
  AirtelMoneyCard({super.key});

  @override
  State<AirtelMoneyCard> createState() => _AirtelMoneyCardState();
}

class _AirtelMoneyCardState extends State<AirtelMoneyCard> {
  var _isShow = false;
  var _dollarsValue = "20 000";
  var _francValue = "17 000 000";
  var _passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.book),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Airtel Money",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "USD",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80)),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      _isShow ? _dollarsValue : "XXXX",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "CDF",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80)),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      _isShow ? _francValue : "XXXX",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        _isShow = !_isShow;
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                width: 500,
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [

                                        Icon(Icons.lock,size: 45,color: Colors.red,),
                                        TextField(controller: _passWord)
                                    ],
                                  ),
                              );
                            });
                      },
                    );
                  },
                  icon: Icon(_isShow ? Icons.visibility : Icons.visibility_off),
                  highlightColor: Colors.blueAccent,
                  splashColor: Colors.blueGrey,
                  hoverColor: Colors.blueGrey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Show Balance",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
