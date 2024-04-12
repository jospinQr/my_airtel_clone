import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_airtel_clone/ui/screen/AirtelMonyScreen.dart';
import 'package:my_airtel_clone/ui/screen/AirtelTvScreen.dart';
import 'package:my_airtel_clone/ui/screen/HomeScreen.dart';
import 'package:my_airtel_clone/ui/screen/PlusScreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

var _index = 0;

const screens = [
  HomeScreen(),
  AirtelMoneyScreen(),
  AirtelTvScreen(),
  PlusScreen(),
];

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(
            "airtel",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: const Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Theme.of(context).colorScheme.background,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_sharp,
                  color: Theme.of(context).colorScheme.background,
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,

          currentIndex: _index,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
          unselectedLabelStyle: const TextStyle(color: Colors.grey) ,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          onTap: (int index) {
              setState(() {
                  _index=index;
              });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Ecran d'acceuil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_sharp),
                label: "Airetel Money"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Airtel Tv"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Plus"),
          ],
        ),
        body: Stack(children:[screens[_index]] ));
  }
}
