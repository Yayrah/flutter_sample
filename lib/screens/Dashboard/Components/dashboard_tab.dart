import 'package:flutter/material.dart';

import '../../../constants.dart';

class DashboardTabs extends StatefulWidget {
  final String title;
  const DashboardTabs({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<DashboardTabs> createState() => _DashboardTabsState();
}

class _DashboardTabsState extends State<DashboardTabs> {
  bool isTabSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTabSelected = !isTabSelected;
        });
      },
      child: Container(
        height: 47,
        constraints: BoxConstraints(
          minWidth: 144,
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
        decoration: BoxDecoration(
          color: isTabSelected ? green : white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: grey, width: 1),
        ),
        child: Center(
          child: Text(
            widget.title,
              style: isTabSelected
                  ? TextStyle(
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )
                  : TextStyle(
                      color: grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
        ),
      ),
    );
  }
}

