import 'package:flutter/material.dart';

abstract class JOFutureBuilderCard<T> extends StatefulWidget {
  JOFutureBuilderCard({
    Key? key,
    this.data,
    this.onClick,
  }) : super(key: key);
  T? data;
  Function(T?)? onClick;

  void generate(T data);
}

abstract class JOFutureBuilderCardState<B extends StatefulWidget, T>
    extends State<B> {
  Widget build(BuildContext context);
}
