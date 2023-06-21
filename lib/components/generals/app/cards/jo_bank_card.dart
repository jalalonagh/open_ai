import 'package:flutter/material.dart';

import '../../../../constans/font_dark_styles.dart';

class JOBankCard extends StatelessWidget {
  const JOBankCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
    //this.data,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;
  //final BankVM? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10.0,
        left: 10.0,
        bottom: 5.0,
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).colorScheme.background,
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    image,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(right: 50.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: FontLightStyle().subtitleStyle,
                          ),
                          // TextSpan(
                          //     text: "اعضاء ${data?.users?.length ?? 0} \t"),
                          // TextSpan(text: "اقساط ${data?.totalMonth ?? 0}\n"),
                          // TextSpan(
                          //     text: "مبلغ قسط ${data?.monthlyPayment ?? 0}")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
