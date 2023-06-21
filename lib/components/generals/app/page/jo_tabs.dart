import 'package:flutter/material.dart';

class JoTabs extends StatefulWidget {
  const JoTabs({
    Key? key,
    required this.icons,
    required this.tabsBody,
    this.title,
  }) : super(key: key);
  final List<IconData> icons;
  final List<Widget> tabsBody;
  final Widget? title;

  @override
  State<JoTabs> createState() => _JoTabsState();
}

class _JoTabsState extends State<JoTabs> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(0),
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            controller: tabController,
            tabs: widget.icons
                .map(
                  (e) => Tab(
                    icon: Icon(
                      e,
                    ),
                  ),
                )
                .toList(),
          ),
          title: widget.title,
        ),
        body: TabBarView(
          children: widget.tabsBody,
          controller: tabController,
        ),
      ),
    );
  }
}
