import 'package:flutter/material.dart';

class JOPageHeaderLarge extends StatelessWidget {
  const JOPageHeaderLarge({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
