import 'package:flutter/material.dart';
import 'package:loyar/home/map.dart';



class CustomButtomSheet extends StatefulWidget {
  //const CustomButtomSheet({Key key}) : super(key: key);

  @override
  _CustomButtomSheetState createState() => _CustomButtomSheetState();
}

class _CustomButtomSheetState extends State<CustomButtomSheet> {
  double sheetTop = 400;
  double mainSheetTop = 30;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: sheetTop,
        left: 0,
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded ? sheetTop = 400 : sheetTop = mainSheetTop;
              isExpanded = !isExpanded;
            });
          },
          child: SheetContainer(),
        ));
  }
}

class SheetContainer extends StatelessWidget {
  const SheetContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;

    return Container(
        padding: EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            color: Colors.white),
        child: Column(
          children: <Widget>[
            drawerHandler(),
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  GeoMap(sheetItemHeight),
                ],
              ),
            )
          ],
        ));
  }
}

drawerHandler() {
  return Container(
    margin: EdgeInsets.only(bottom: 25),
    height: 3,
    width: 65,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black12),
  );
}

