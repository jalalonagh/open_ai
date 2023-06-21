import 'package:flutter/material.dart';

class JOFutureBuilderCardBanks extends StatefulWidget {
  const JOFutureBuilderCardBanks({
    Key? key,
  }) : super(key: key);

  @override
  State<JOFutureBuilderCardBanks> createState() =>
      _JOFutureBuilderCardBanksState();
}

class _JOFutureBuilderCardBanksState extends State<JOFutureBuilderCardBanks> {
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
              flex: 2,
              child: Container(
                width: 130.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(15.0),
                    bottomStart: Radius.circular(15.0),
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
