

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IdentityCard extends StatelessWidget {
  const IdentityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "kahongya kahereni jospin".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 4),
                    Text("Prépayé- 0971834429".toUpperCase()),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Expanded(
                    child: Text(
                      "Gerer mon compte".toUpperCase(),
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(0.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text(
                          "UNI",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Solde",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    indent: 6,
                    endIndent: 6,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(0.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text(
                          "Mins",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Solde appel",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    indent: 6,
                    endIndent: 6,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(0.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text(
                          "Ko",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(0XFF, 0X00, 0X00, 0X80),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Solde internet",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              children: [
               Expanded(child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("Acheter des forfaits",style: TextStyle(fontSize: 10),),
                      Icon(Icons.account_balance_wallet_sharp)
                    ],
                  ),
                )),
                Expanded(
                  child: ElevatedButton(

                    onPressed: () {},
                    child: Row(
                      children: [

                        Icon(Icons.flash_on_outlined,size: 14,),
                        Text("Acheter des forfaits",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
