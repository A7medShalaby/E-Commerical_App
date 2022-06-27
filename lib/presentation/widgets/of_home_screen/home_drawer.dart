import 'package:e_commercial_app/presentation/widgets/of_home_screen/drawer_list_item.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/strings.dart';
import '../../screens/00_splash_screen.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  bool drawerHomeColor = true;
  bool drawerCartColor = false;
  bool drawerContactUsColor = false;
  bool drawerInfoColor = false;
  bool drawerExitColor = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.whiteColor,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              "Ahmed Shalaby",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 60.0,
              backgroundColor: AppColors.whiteColor,
              backgroundImage: NetworkImage(
                  "https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/272099135_4326758084095948_3617829109673745749_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE9MYIhwRiW6QASXa5fkjPPRYw12WrdQJhFjDXZat1AmPoiAfkAB7Toa15yKjQeaZULZQ71H2uMdYT6Z2NE4P-m&_nc_ohc=ouWnZ94MZ_QAX-hDNwO&tn=IGhBnhHt-IRN6-RI&_nc_ht=scontent.fcai19-6.fna&oh=00_AT_rO_uWQSAFzdHl5KN9G8EZtDBqVBB2jh-ilxDta3moZg&oe=62489213"),
            ),
            accountEmail: Text(
              "a7med.g.shalaby@gmail.com",
              style: TextStyle(
                color: AppColors.blackColor,
              ),
            ),
            decoration: BoxDecoration(
              color: AppColors.pinkColor,
              /*image: DecorationImage(
                image: NetworkImage(
                  "https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/270859520_2692747541031621_4806572111035915945_n.png?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEXgJF8JhGv2RtkSUHzIO2AUbHXEyAdpxVRsdcTIB2nFTx7_BQRoHk4N3nkA4X3kbD02m5tnkkTSlQ-rGmLsygx&_nc_ohc=iFwqubUx5ksAX_Y9gFm&tn=IGhBnhHt-IRN6-RI&_nc_ht=scontent.fcai19-6.fna&oh=00_AT_XjzspP82ZBll10sc4c3x6pQznv9rgZ-p52NaOsVJEdg&oe=621BDA3C",
                ),
                fit: BoxFit.cover,
              ),*/
            ),
          ),
          //Home ListTile
          DrawerListTileItem(
            itemTitle: 'Home',
            itemIcon: Icons.home,
            iconColor: AppColors.pinkColor,
            selected: drawerHomeColor,
            setStateFunction: () {
              setState(() {
                drawerHomeColor = true;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Cart ListTile
          DrawerListTileItem(
            itemTitle: 'Cart',
            itemIcon: Icons.shopping_cart,
            iconColor: AppColors.purpleColor,
            selected: drawerCartColor,
            setStateFunction: () {
              setState(() {
                drawerCartColor = true;
                drawerHomeColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Contact Us ListTile
          DrawerListTileItem(
            itemTitle: 'Contact Us',
            itemIcon: Icons.phone,
            iconColor: AppColors.blueColor,
            selected: drawerContactUsColor,
            setStateFunction: () {
              setState(() {
                drawerContactUsColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Info ListTile
          DrawerListTileItem(
            itemTitle: 'Info',
            itemIcon: Icons.info,
            iconColor: AppColors.yellowColor,
            selected: drawerInfoColor,
            setStateFunction: () {
              setState(() {
                drawerInfoColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Exit ListTile
          DrawerListTileItem(
            itemTitle: 'Exit',
            itemIcon: Icons.exit_to_app,
            iconColor: AppColors.blackColor,
            selected: drawerExitColor,
            setStateFunction: () async {
              setState(() {
                drawerExitColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
              });
              final preferences = await SharedPreferences.getInstance();
              preferences.setBool('showHome', false);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
