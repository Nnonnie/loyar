import 'package:flutter/material.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/screen/size_config.dart';



class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.70,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.amberAccent.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  '',
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                Text('Chinonso'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
              closeDrawer();
            },
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Chat'),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
              closeDrawer();
            },
            leading: Icon(Icons.games_outlined),
            title: Text('Game'),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
              closeDrawer();
            },
            leading: Icon(Icons.account_balance_wallet_outlined),
            title: Text('Wallets'),
          ),
          Divider(height: 1),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
            closeDrawer();
            },
            leading: Icon(Icons.history_outlined),
            title: Text('History'),
          ),
          Divider(height: 1),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
            closeDrawer();
            },
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
          Divider(height: 1),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
            },
            leading: Icon(Icons.support_outlined),
            title: Text('Help & Support'),
          ),
          Divider(height: 1),
          ListTile(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HavenHome())),
            closeDrawer();
            },
            leading: Icon(Icons.share_outlined),
            title: Text('Share App'),
          ),
          Divider(height: 1),
          Spacer(
            flex: 5,
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.5,
            child: DefaultButton(
              text: "Activate Driver",
              press: () {
                //  Navigator.pushNamed(context,Driver.routeName);
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

