import 'package:flutter/material.dart';

class JOPageDetailBankDescription extends StatefulWidget {
  const JOPageDetailBankDescription({
    Key? key,
    this.desc,
    this.desc2,
    this.title,
  }) : super(key: key);
  final String? desc;
  final String? desc2;
  final String? title;

  @override
  State<JOPageDetailBankDescription> createState() =>
      _JOPageDetailBankDescriptionState();
}

class _JOPageDetailBankDescriptionState
    extends State<JOPageDetailBankDescription> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Text(
                  widget.title ?? "چت هوش مصنوعی",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.desc ??
                      "متن خودتون رو به انگلیسی و با نگارش درست تایپ کنید.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.desc2 ?? "سعی کنید که از عبارتهای معقول استفاده کنید",
                  style: TextStyle(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
