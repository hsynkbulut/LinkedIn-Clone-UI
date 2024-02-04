import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_mobile_app_ui/ui/views/home/homepage.dart';
import 'package:linkedin_mobile_app_ui/ui/views/notifications/notification_page.dart';
import 'package:linkedin_mobile_app_ui/themes/custom_colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../views/jobs/jobs_page.dart';
import '../views/my_network/my_network_page.dart';
import '../views/publish/publish_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: const [
          HomePage(),
          MyNetworkPage(),
          PublishPage(),
          NotificationPage(),
          JobsPage(),
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style1,
        // navBarStyle: NavBarStyle.style2,
        // navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style5,
        // navBarStyle: NavBarStyle.style6,
        // navBarStyle: NavBarStyle.style8,
        // navBarStyle: NavBarStyle.style9,
        // navBarStyle: NavBarStyle.style11,
        // navBarStyle: NavBarStyle.style13,
        // navBarStyle: NavBarStyle.style14,
        // navBarStyle: NavBarStyle.style17,
        // navBarStyle: NavBarStyle.style18,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.houseChimney,
          size: 22,
        ),
        title: ("Ana Sayfa"),
        activeColorPrimary: CustomColors.intermediateAuxiliaryColor,
        inactiveColorPrimary: CustomColors.mainAuxiliaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.userGroup,
          size: 22,
        ),
        title: ("Ağım"),
        //textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: CustomColors.intermediateAuxiliaryColor,
        inactiveColorPrimary: CustomColors.mainAuxiliaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.solidSquarePlus,
          size: 22,
        ), //FontAwesomeIcons.bell
        title: ("Yayınla"),
        activeColorPrimary: CustomColors.intermediateAuxiliaryColor,
        inactiveColorPrimary: CustomColors.mainAuxiliaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.solidBell,
          size: 22,
        ),
        title: ("Bildirimler"),
        activeColorPrimary: CustomColors.intermediateAuxiliaryColor,
        inactiveColorPrimary: CustomColors.mainAuxiliaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.briefcase,
          size: 22,
        ),
        title: ("İş İlanları"),
        activeColorPrimary: CustomColors.intermediateAuxiliaryColor,
        inactiveColorPrimary: CustomColors.mainAuxiliaryColor,
      ),
    ];
  }
}
