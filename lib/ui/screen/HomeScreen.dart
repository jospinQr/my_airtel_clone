import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_airtel_clone/ui/components/AirtelMoneyCard.dart';
import 'package:my_airtel_clone/ui/components/IdentityCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        scrollDirection: Axis.vertical,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                 children: [
                   Container(height: 32,color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80),),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 12),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         IdentityCard(),
                         SizedBox(height: 4,),
                         AirtelMoneyCard()
                       ],
                     ),
                   )
                 ],
              ),


            ],
          ),
        );
  }
}
