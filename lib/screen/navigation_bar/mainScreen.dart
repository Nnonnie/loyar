import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:loyar/home/components/body_home.dart';
import 'package:loyar/screen/navigation_bar/CustomDrawer.dart';

//import 'package:swipedetector/swipedetector.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  FSBStatus status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.white,
          status: status,
          drawer: CustomDrawer(
            closeDrawer: () {
              setState(() {
                status = FSBStatus.FSB_CLOSE;
              });
            },
          ),
          screenContents: BodyHome(),
        ),
   
      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            setState(() {
              status = status == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          },
          child: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}


