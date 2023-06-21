import 'package:flutter/material.dart';

class JOFutureBuilderCardPayments extends StatefulWidget {
  const JOFutureBuilderCardPayments({
    Key? key,
  }) : super(key: key);

  @override
  State<JOFutureBuilderCardPayments> createState() =>
      _JOFutureBuilderCardPaymentsState();
}

class _JOFutureBuilderCardPaymentsState
    extends State<JOFutureBuilderCardPayments> {
  bool inProgress = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                width: 300.0,
                //height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(15.0),
                    bottomStart: Radius.circular(15.0),
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عضو",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    // Text(
                    //   widget.user?.personName ?? "",
                    //   style: TextStyle(fontSize: 12.0),
                    // ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "پرداخت شده",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    // Text(
                    //   widget.payment != null ? "بله" : "خیر",
                    //   style: TextStyle(
                    //     color: widget.payment != null
                    //         ? CBase().successColor
                    //         : CBase().errorColor,
                    //     fontSize: 12.0,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        //widget.onClick.call(widget.payment ?? PaymentVM());
      },
    );
  }
}
