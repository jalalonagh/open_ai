import 'package:flutter/material.dart';
import 'package:lanternet_open_ai/bases/Utilities/Base.dart';

class JOPageDetailBankMonths extends StatefulWidget {
  const JOPageDetailBankMonths({
    Key? key,
    required this.bank,
    // required this.onClick,
  }) : super(key: key);
  final int bank;
  // final Function(BankMonthVM) onClick;

  @override
  State<JOPageDetailBankMonths> createState() => _JOPageDetailBankMonthsState();
}

class _JOPageDetailBankMonthsState extends State<JOPageDetailBankMonths> {
  // List<BankMonthVM>? months;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //months = BankMonthsServiceV2().getList();
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: //months != null
          //     ? ListView(
          //         children: months!
          //             .map(
          //               (e) => InkWell(
          //                 onTap: () {
          //                   widget.onClick.call(e);
          //                 },
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                     color: CBase().basePrimaryColor,
          //                     borderRadius: BorderRadius.circular(10.0),
          //                   ),
          //                   margin: EdgeInsets.all(5.0),
          //                   padding: EdgeInsets.symmetric(
          //                     horizontal: 15.0,
          //                     vertical: 15.0,
          //                   ),
          //                   width: 65.0,
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Container(
          //                         width: 100.0,
          //                         child: SingleChildScrollView(
          //                           scrollDirection: Axis.vertical,
          //                           child: Text(
          //                             e.winner != null
          //                                 ? e.winner?.fullname ?? ""
          //                                 : e.winnerName ?? "قرعه کشی نشده",
          //                             textAlign: TextAlign.right,
          //                             style: TextStyle(
          //                               fontWeight: FontWeight.bold,
          //                               fontSize: 14,
          //                               color: CBase().baseYellowColor,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       Container(
          //                         child: SingleChildScrollView(
          //                           child: Column(
          //                             children: [
          //                               Text(
          //                                 "${e.monthName}",
          //                                 textAlign: TextAlign.center,
          //                                 style: TextStyle(
          //                                   color: CBase().pureWhite,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             )
          //             .toList())
          //    :
          Text("هنوز ماه ها ساخته نشده است"),
    );
  }
}
